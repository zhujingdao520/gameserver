
-module(role).
-behaviour(gen_server).

-include("role.hrl").
-include("db_table.hrl").
-include("common.hrl").

%% callback
-export([init/1
    ,handle_call/3
    ,handle_cast/2
    ,handle_info/2
    ,terminate/2
    ,code_change/3
    ]).

%% API
-export([
    create/1
    ,rpc/4
    ,disconnect/1
    ,send/2
    ,send/3
    ]).

create([RoleId, Account, Zone_id, Link]) ->
    gen_server:start_link({global, {role, RoleId, Zone_id}}, ?MODULE, [RoleId, Account, Zone_id, Link], []).


init([RoleId, Account, Zone_id, Link]) ->
    UserTab = db_logic:user_init(RoleId),

    %% 玩家基本数据
    {ok, Role} = role_transform:to(db, UserTab),
    NewRole = Role#role{
        pid = self()
        ,account = Account
        ,zone_id = Zone_id
        ,link = Link
    },

    process_flag(trap_exit, true),
    link(Link#link.pid),

    %% 进行数据初始化
    self() ! init,

    %% 玩家数据更新
    erlang:send_after(330, self(), update),

    ?INFO("[init Succ] [user_id:~p account:~p platform_id:~p zone_id:~p]",
                [RoleId, Account, ?SERVER_ID, Zone_id]),
    {ok, NewRole}
.

handle_call(_Request, _From, State) ->
    Reply = State,
    {reply, Reply, State}.

handle_info(init, State = #role{user_id = UserID, name = Name, pid = Pid
    , scene = #pos{scene_id = SceneID, scene_x = X, scene_y = Y}}) ->
    %% 登陆成功
    role:send(Pid, 1052, {0, SceneID, 0, SceneID, UserID, 3, 1, 1, 1, 1, Name}),
    io:format("send succ:~p ~n",[1052]),
    %% 玩家进入场景
    role:send(Pid, 1251, {2,0,1,94,13,0}),
    io:format("send succ:~p ~n",[1251]),

    % role:send(Pid, 1263, {SceneID, UserID, 10, 7, 0, 0, 59, 769, 64, 15
    %     %% mount_level
    %     , 6, 0, 15, 1, 1, 1, 1024, 3000, 91, 64, 0, 0, 0, 0, 0, 0, 0, <<"1">>}),

    {noreply, State};
%% @doc 连接器进程异常退出
handle_info({'Exit', _Pid, _Reason}, State) ->
    ?INFO("[handle_info role_exit]"),
    {stop, normal, State};

%% @doc 玩家数据更新
handle_info(update, State = #role{user_id = _RoleId}) ->
    erlang:send_after(330, self(), update),
    {noreply, State};

%% @doc 给玩家自己发送信息
handle_info({send_data, Msg}, State = #role{link = #link{pid = Pid}}) ->
    %% 通知发送进程发送消息
    Pid ! {send_data, Msg},
    {noreply, State};

%% @doc rpc
handle_info({rpc, Code, ModName, Data}, State) ->
    {ok, NewState} = handle_rpc(Code, ModName, Data, State),
    %% 记取下条消息

    read_next(NewState),
    {noreply, NewState};
%% 改变属性
handle_info({attr, Param}, State) ->
    {ok, NewState} = change_attr(Param, State),
    {noreply, NewState};
%% @doc 收到不效消息
handle_info(_Info, State) ->
    {noreply, State}.


%% @doc 新一天数据更新
handle_cast(newday, State = #role{user_id = RoleId}) ->
    ?INFO("[handle_cast newday][user_id:~p]", [RoleId]),
    {noreply, State};

%% @doc 网络断开
handle_cast(disconnect, State = #role{user_id = RoleId}) ->
    ?INFO("[handle_cast Disconnect][user_id:~p]", [RoleId]),
    {noreply, State};
handle_cast(_Request, State) ->
    {noreply, State}.

terminate(_Reason, State) ->
    ?INFO("[role terminate]"),
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.


%% -----------------------------------------------------------------------------
%% 外部接口
%% -----------------------------------------------------------------------------
read_next(#role{link = #link{pid = Pid}}) ->
    Pid ! read_next
.

rpc(Pid, Code, ModName, Data) ->
    Pid ! {rpc, Code, ModName, Data}
.

handle_rpc(Code, ModName, Data, State = #role{user_id = RoleId, link = #link{socket = Socket},
    scene = #pos{map_pid = MapPid}}) ->
    ?INFO("[role:rpc succ][role_id:~p code:~p map_pid:~p]",[RoleId, Code, MapPid]),
    case ModName:handle(Code, Data, State) of
        {ok, NewState} ->
            {ok, NewState};
        %% 同步state 不需要回复客户端
        {sync, NewState} ->
            {ok, NewState};
        %% 同步state 需要回复客户端
        {sync, Ret_Data, NewState} ->
            sys_connect:send(Code, Ret_Data, Socket),
            {ok, NewState};
        %% 出错
        {error, Reason} ->
            ?ERR("[call Error][reason:~w]",[Reason]),
            {ok, State}
    end
.

disconnect(Pid) ->
    Pid ! disconnect
.

%% 外部直接打包信息
send(Pid, Msg) ->
    Pid ! {send_data, Msg}
.

%% 函数内部打包消息并发送
send(Pid, Code, Msg) ->
    case mapping:module(game_server, Code) of
        {ok, _, _, Parser, _} ->
            {ok, Bin} = Parser:pack(srv, Code, Msg),
            Pid ! {send_data, Bin};
        _ ->
            ?INFO("[role:send error][code:~p]",[Code])
    end
.

%% 改变玩家属性
-spec change_attr(tuple(), #role{}) -> {ok, #role{}}.
change_attr({pos, X, Y}, Role = #role{scene = Pos}) ->
    R = Role#role{scene = Pos#pos{scene_x = X, scene_y = Y}},
    {ok, R};
change_attr(Param, Role) ->
    ?INFO("[role:change_attr error][type:~p]",[Param]),
    {ok, Role}
.
