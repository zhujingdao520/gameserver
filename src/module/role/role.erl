
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
    ]).

create([RoleId, Account, Plat_id, Zone_id, Link]) ->
    gen_server:start_link({global, {role, RoleId, Plat_id, Zone_id}}, ?MODULE, [RoleId, Account, Plat_id, Zone_id, Link], []).


init([RoleId, Account, Plat_id, Zone_id, Link]) ->
    io:format("======"),
    UserTab = db_logic:user_init(RoleId),
    io:format("======2"),

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
        ,last_scene_key = Last_scene_key
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
                ,name = Name
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
                    }
                ,platform = Platform
                ,account = Account
                ,zone_id = Zone_id
                ,create_itme = Create_itme
                ,last_scene = #pos{
                    scene_id = Last_scene_id
                    ,scene_key = Last_scene_key
                    ,scene_x = Last_scene_x
                    ,scene_y = Last_scene_y
                }
                ,skill_data = []
                ,equip_data = []
                ,knapsact = []
                ,link = Link
            },

            process_flag(trap_exit, true),
            link(Link#link.pid),

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
handle_info({'Exit', _Pid, Reason}, State) ->
    ?INFO("[handle_info role_exit]"),
    {stop, normal, State};
%% @doc 玩家数据更新
handle_info(update, State = #role{user_id = RoleId}) ->
    ?INFO("[handle_info update][user_id:~p]", [RoleId]),
    erlang:send_after(330, self(), update),
    {noreply, State};
%% @doc 收到不效消息
handle_info(_Info, State) ->
    {noreply, State}.

%% @doc rpc
handle_cast({rpc, Code, ModName, Data}, State) ->
    {ok, NewState} = handle_rpc(Code, ModName, Data, State),
    %% 记取下条消息
    read_next(NewState),
    {noreply, NewState};
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


%% -------------------------------------
%% 外部接口
%% -------------------------------------
read_next(#role{link = #link{pid = Pid}}) ->
    Pid ! read_next
.

rpc(Pid, Code, ModName, Data) ->
    Pid ! {rpc, Code, ModName, Data}
.

handle_rpc(Code, ModName, Data, State = #role{link = #link{socket = Socket}}) ->
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
