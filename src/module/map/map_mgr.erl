
-module(map_mgr).
-behaviour(gen_server).

%% Callback
-export([
    init/1
    ,handle_cast/2
    ,handle_call/3
    ,handle_info/2
    ,terminate/2
    ,code_change/3
]).

%% API
-export([
    start_link/0
    ,create/1
    ,get_scene/1
]).

-record(state, {next_id = 10000}).%% 1W以上是主场景

-include("common.hrl").
-include("map.hrl").
-include("role.hrl").


start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], [])
.

%% --------------------------------------
%% 创建相同地图ID多个场景对象
%% --------------------------------------
create(BaseID) ->
    case map_data:get(BaseID) of
        {error, _} ->
            ?INFO("[create Error][地图[map_id:%~w]不存在]",[BaseID]);
        {ok, #map_data{name = Name,condition = Cond
             ,width = Width, height = Heigth, revive = _Revive
            }} ->

            %% 唯一地图ID(进程必须启动才可以)
            Id = gen_server:call(self(), fetch_id),
            Map = #map{
                id = Id,platform_id = 1,zone_id = 1
                ,base_id = BaseID, name = Name, condition = Cond
                ,num = 0, width = Width, height = Heigth
            },
            case map:start_link(Map) of
                {ok, _Pid} -> ok;
                _Error  -> ?INFO("[create Error][创建地图失败[map_id:~p]]",[BaseID])
            end
    end
.

%% 加载所有地图的阻档点
load_block([]) ->
    ok;
load_block([BaseID|Tail]) ->
    case map_data_walkable:get(BaseID) of
        undefined ->
            ?INFO("[load_block Error][地图[mpaid:~p]找不到阻挡信息]",[BaseID]),
            ok;
        Bin ->
            case map_data:get(BaseID) of
                {ok, #map_data{width = Width}} ->
                    do_load_block(BaseID, Width, 0, Bin);
                {error, _} ->
                    ?INFO("[load_block Error][地图[map_id:%~w]不存在]",[BaseID])
            end
    end,
    load_block(Tail)
.

do_load_block(_BaseID, _Width, _X, <<>>) ->
    ok;
do_load_block(BaseID, Width, X, Bin) ->
    <<Line:Width/binary, Rest/binary>> = Bin,
    do_load_block_line(BaseID, X, 0, Line),
    do_load_block(BaseID, Width, X + 1, Rest)
.

do_load_block_line(_BaseID, _X, _Y, <<>>) ->
    ok;
do_load_block_line(BaseID, X, Y, Line) ->
    <<Posint, Rest/binary>> = Line,
    Posint =/= $0 andalso ets:insert_new(map_block, {BaseID, X, Y}),
    do_load_block_line(BaseID, X, Y + 1, Rest)
.

%% @是否有阻挡
is_block(BaseID, X, Y) ->
    case ets:lookup(map_block, {BaseID, X, Y}) of
        [_] ->
            true;
        _ ->
            false
    end.

%% @doc 获得场景
-spec get_scene(integer()) -> {ok, #map{}} | {error, undefined}.
get_scene(MapID) ->
    case ets:lookup(map_list, MapID) of
        [] -> {error, undefined};
        [Map] -> {ok, Map}
    end
.

%% 跨节点查找

%% @doc 角色进入场景
-spec role_enter(tuple(), #role{}) -> {ok, #role{}}.
role_enter({MapID, X, Y}, Role) ->
    Ret = case map_mgr:get_scene(MapID) of
        {error, undefined} -> {error, Role};
        {ok, Map} ->
            case role_condition:check(Map#map.condition, Role) of
                true ->
                    {ok, NewRole} = do_enter(X, Y, Map, Role);
                {false, Reason} ->
                    ?INFO("[map_mgr:role_enter Error][reason:~p]", Reason),
                    {error, Reason}
            end
    end,
    case Ret of
        {ok, NewRole1} -> {ok, NewRole1};
        {error, _} -> {error, Role}
    end
.

%% @doc 进入场景
-spec do_enter(integer(), integer(), #map{}, #role{}) -> {ok, #role{}}.
do_enter(X, Y, Map, Role) ->
    %% 离开上个场景
    {ok, Role1} = role_levae(Role),

    %% 更玩家场景信息
    NewRole = Role1#role{
        scene = #pos{
                scene_id = Map#map.id
                ,scene_x = X
                ,scene_y = Y
                }
    },
    {ok, MapRole} = role_transform:transform_map_role(Role1)
    %% 更玩家在地图的信息
    NMapRole = MapRole#map_role{map = Map, x = X, y = Y},
    %%  进入地图
    Map#map.pid ! {role_enter, NMapRole},
    {ok, NewRole}
.

%% @doc 离开场景
do_leave() ->

    ok
.

%% @doc 移动
do_move() ->

    ok
.

%% 创建主场景
create_startup([]) ->
    ok;
create_startup([BaseID|Tail]) ->
    case map_data:get(BaseID) of
        {error, _} ->
            ?INFO("[create Error][地图[map_id:%~w]不存在]",[BaseID]);
        {ok, #map_data{id = ID, name = Name,condition = Cond
             ,width = Width,height = Heigth ,revive = Revive
            }} ->

            Map = #map{
                id = ID,platform_id = 1, zone_id = 1
                ,base_id = BaseID, name = Name, condition = Cond
                , width = Width, height = Heigth
            },

            case map:start_link(Map) of
                {ok, _Pid} -> ok;
                Error  -> ?INFO("[create Error][创建地图失败[map_id:~p ~p]]",[BaseID, Error])
            end
    end,
    create_startup(Tail)
.


%% ------------------------------------------
%% 回调
%% ------------------------------------------
init([]) ->
    process_flag(trap_exit, true), %%
    ets:new(map_list, [set, named_table, public, {keypos, #map.id}]), %% 管理所有场景
    ets:new(map_block, [set, named_table, public]),
    load_block(map_data:all()),
    create_startup(map_data:startup()), %% 创建场景
    {ok, #state{}}
.

%% @doc 获得场景动态ID
handle_call(fetch_id, _From, State = #state{next_id = NextId}) ->
    NewState = #state{next_id = NextId + 1 },
    {reply, NextId + 1,NewState};
handle_call(_Request, _From, State) ->
    {reply, State, State}
.

handle_cast(_Request, State) ->
    {noreply, State}
.

handle_info(_Info, State) ->
    {noreply, State}
.

terminate(_Reason, State) ->
    {normal, State}
.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.
