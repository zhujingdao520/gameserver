
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

create([RoleId, Account, Plat_id, Zone_id, Link]) ->
    gen_server:start_link({global, {role, RoleId, Plat_id, Zone_id}}, ?MODULE, [RoleId, Account, Plat_id, Zone_id, Link], []).


init([RoleId, Account, Plat_id, Zone_id, Link]) ->
    UserTab = db_logic:user_init(RoleId),

    #user_tab{
        user_id = ID
        ,name = Name
        ,job = Job
        ,sex = Sex
        ,platform = Platform
        ,create_itme = Create_itme
        ,scene_id = Scene_id
        ,scene_key = Scene_key
        ,scene_x = Scene_x
        ,scene_y = Scene_y
        ,last_scene_id = Last_scene_id
        ,last_scene_key = _Last_scene_key
        ,last_scene_x = Last_scene_x
        ,last_scene_y = Last_scene_y
        ,level = Level
        ,exp = Exp
        ,coin = Coin
        ,gold = Gold
        ,vip_level= VipLevel
    } = UserTab,
    if
        Plat_id =:= Platform ->
            %% 玩家基本数据
            Role = #role{
                pid = self()
                ,user_id = ID
                ,name = list_to_binary(Name)
                ,level = Level
                ,exp = Exp
                ,job = Job
                ,sex = Sex
                ,coin = Coin
                ,gold = Gold
                ,vip_level = VipLevel
                ,scene = #pos{
                    scene_id = Scene_id
                    ,scene_key = Scene_key
                    ,scene_x = Scene_x
                    ,scene_y = Scene_y
                    ,last = #pos_history{
                        scene_id        = Last_scene_id
                        ,platform_id    = env:get_cnf(platform)
                        ,zone_id        = env:get_cnf(zone_id)
                        ,scene_x        = Last_scene_x
                        ,scene_y        = Last_scene_y
                        }
                    }
                ,platform = Platform
                ,account = Account
                ,zone_id = Zone_id
                ,create_itme = Create_itme
                ,skill_data = []
                ,equip_data = []
                ,knapsact = []
                ,link = Link
            },

            process_flag(trap_exit, true),
            link(Link#link.pid),
            %% 通知客户端进入成功
            role:send(self(), 1120, {1}),

            %% 玩家数据更新
            erlang:send_after(330, self(), update),

            %% log玩家登陆成功
            ?INFO("[init Succ] [user_id:~p account:~p platform_id:~p zone_id:~p]",
                [RoleId, Account, Plat_id, Zone_id]),
            {ok, Role};
        true ->
            ?ERR("[init Error] [user_id:~p account:~p platform_id:~p zone_id:~p]",
                [RoleId, Account, Plat_id, Zone_id]),
            {normal, {}}
    end
.

handle_call(_Request, _From, State) ->
    Reply = State,
    {reply, Reply, State}.

%% @doc 连接器进程异常退出
handle_info({'Exit', _Pid, _Reason}, State) ->
    ?INFO("[handle_info role_exit]"),
    {stop, normal, State};

%% @doc 玩家数据更新
handle_info(update, State = #role{user_id = _RoleId}) ->
    % ?INFO("[handle_info update][user_id:~p]", [RoleId]),
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

handle_rpc(Code, ModName, Data, State = #role{link = #link{socket = Socket}}) ->
    ?INFO("[role:rpc succ][code:~p]",[Code]),
    case ModName:handle(Code, Data, State) of
        {ok, _} ->
            {ok, State};
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
change_attr({pos, X, Y}, Role) ->
    R = Role#role{scene = #pos{scene_x = X, scene_y = Y}},
    {ok, R};
change_attr(Param, Role) ->
    ?INFO("[role:change_attr error][type:~p]",[Param]),
    {ok, Role}
.
