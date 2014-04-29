
-module(role_create).
-behaviour(gen_server).

-export([init/1
        ,handle_info/2
        ,handle_cast/2
        ,handle_call/3
        ,terminate/2
        ,code_change/3]).

-export([start_link/0
        ,create/3
        ]).

-record(state, {}).
-include("common.hrl").
-include("db_table.hrl").

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init([]) ->
    ets:new(role_name_index, [set, public, named_table, {keypos, 1}]),
    {ok, #state{}}.

handle_info(_Info, State) ->
    {noreply, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

handle_call(_Request, _Form, State) ->
    {reply, State, State}.

terminate(_Reason, State) ->
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

create(Name, Classess, Socket) ->
    case ets:lookup(role_name_index, Name) of
        [] ->
            do_create(Name, Classess, Socket),
            {ok};
        _ ->
            ?INFO("[Create Role_Name_Exist][name:~p]",[Name]),
            {error, "Role_Name_Exist"}
    end
.

do_create(Name, Classess, Socket) ->
    Second = calendar:datetime_to_gregorian_seconds(calendar:local_time()),
    RoleTab = #user_tab{
         name = Name
        ,job = Classess
        ,sex = 1 %% 1:男 2：女
        ,platform = env:get_cnf(platform)
        % ,zone_id =  env:get_cnf(zone_id)
        ,create_itme = Second
        ,scene_id = 1
        ,scene_key = 1
        ,scene_x = 20
        ,scene_y = 20
        ,last_scene_id = 0
        ,last_scene_key = 0
        ,last_scene_x = 0
        ,last_scene_y = 0
        ,change_state = ?DB_INSERT
    },

    UserID = db_logic:user_first_login(RoleTab),
    % ets:insert_new(role_name_index, {Name, UserID}),
    %% 通知客户端创建成功
    {ok, Bin} = proto_11:pack(srv, 1105, {UserID, 1, 1}),
    gen_tcp:send(Socket, Bin)
.