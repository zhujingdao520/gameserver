
-module(client_rpc).
-export([handle/3]).

% -include("pos.hrl").
-include("role.hrl").
-include("conn.hrl").
-include("common.hrl").

%% 创建角色
handle(1105, {Name, Classess}, State) ->
    case role_create:create(Name, Classess, State#conn.socket) of
        {ok} ->
            {ok, State};
        {error, _Reason} ->
            {ok, State}
    end;

%% 请求登陆游戏
handle(1120, {UserID, Plat_id, Zone_id}, State = #conn{
    socket = Socket, conn_pid = Pid, port = Port, address = Address}) ->
    Account = <<"37wan">>,
    Link = #link{
        socket = Socket
        ,pid = Pid
        ,ip = Address
        ,port = Port
    },

    %% 判断玩家是否登陆顶号逻辑暂时没有写

    %% 创建角色进程
    {ok, Pid1} = role:create([UserID, Account, Plat_id, Zone_id, Link]),
    NewState = State#conn{
                object = role
                , obj_pid = Pid1
                , account = Account
                , platform_id = Plat_id
                , zone_id = Zone_id
                },
    {sync, NewState}
.





