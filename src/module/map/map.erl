
-module(map).
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
    start_link/1
    ,enter/3
    ,leave/3
    ,role_move/3
]).

% -include("pos.hrl").
-include("role.hrl").
-include("map.hrl").
-include("common.hrl").

start_link(Map) ->
    gen_server:start_link(?MODULE, [Map], [])
.

%% ------------------------------------------
%% @doc 更新其中一个场景的信息
%% ------------------------------------------
sync(Map) -> ets:insert(map_list, Map).

%% ------------------------------------------
%% @doc role: 角色进入场景
%% @doc unit: 怪物、采集物等进入场景
%% ------------------------------------------
-spec enter(atom(), pid(), #map_role{}) -> ok.
enter(role, Pid, Msg) ->
    Pid ! {role_enter, Msg};
enter(unit, Pid, Msg) ->
    Pid ! {unit_enter, Msg};
enter(_, _Pid, _Msg) ->
    ok
.

%% ------------------------------------------
%% @doc role: 角色离开场景
%% @doc unit: 怪物、采集物等离开场景
%% ------------------------------------------
-spec leave(atom(), pid(), #map_role{}) -> ok.
leave(role, Pid, Msg) ->
    Pid ! {role_levae, Msg};
leave(unit, Pid, Msg) ->
    Pid ! {unit_levae, Msg};
leave(_, _Pid, _Msg) ->
    ok
.

%% -------------------------------------------
%% @doc 角色移动
%% -------------------------------------------
-spec role_move(#role{}, integer(), integer()) -> ok.
role_move(#role{pid = Pid, scene = #pos{map_pid = MapPid}}, TX, TY) ->
    MapPid ! {role_move, Pid, TX, TY}
.

%% ------------------------------------------------------
%% Callback
%% ------------------------------------------------------
init([Map]) ->
    process_flag(trap_exit, true), %% 转为系统进程
    put(unit_list, []), %% 保存场景单位对象
    put(role_pid, []),

    MapGrid = #map_grid{
        map_pid = self()
        ,map_id = Map#map.id
        ,base_id =Map#map.base_id
        ,width = Map#map.width
        ,height = Map#map.height
    },

    %% 创建格子对象
    {ok, Pid} = map_grid:start_link(MapGrid),
    NewMap = Map#map{pid = self(), grid_pid = Pid},
    sync(NewMap),
    {ok, NewMap}
.

handle_call(_Request, _From, State) ->

    {reply, State}
.

handle_cast(_Request, State) ->
    {noreply, State}
.

%% 角色移动
handle_info({role_move, Pid, TX, TY}, Map) ->
    TX1 = ?DX(TX, Map#map.width),
    TY1 = ?DY(TY, Map#map.height),

    %% 更玩家在场景信息
    MapRole = #map_role{x = SX, y = SY} = get({role, Pid}),
    put({role, Pid}, MapRole#map_role{x = TX1, y = TY1}),

    Map#map.grid_pid ! {role_move, MapRole#map_role.rid, SX, SY, TX1, TY1},
    %% 更新玩家当前场景坐标
    MapRole#map_role.pid ! {attr, {pos, TX, TY}},
    {noreply, Map};
%% 角色进入场景
handle_info({role_enter, MapRole}, Map) ->
    {ok, NewMap} = case get({role, MapRole#map_role.pid}) of
        undefined ->
            %% 进行容错，把坐标转成地图范围
            DX = ?DX(MapRole#map_role.x, Map#map.width),
            DY = ?DY(MapRole#map_role.y, Map#map.height),

            %% 计算所在格子位置
            GX = ?GX(DX),
            GY = ?GY(DY),

            %% 更新玩家在地图的信息
            NMapRole = MapRole#map_role{map = Map#map.id, gx = GX, gy = GY},

            %% 把人物信息加入进程字典
            put({role, MapRole#map_role.pid}, MapRole),

            %% 进入格子
            map_grid:enter(Map#map.grid_pid, GX, GY, NMapRole),
            NewMap1 = Map#map{num = Map#map.num + 1},
            %% 更新场景信息
            sync(NewMap1),

            %% 通知客户端玩家进入场景
            {ok, Bin} = proto_10:pack(srv, 1020, {Map#map.id, MapRole#map_role.platform_id
                , MapRole#map_role.zone_id}),
            role:send(MapRole#map_role.pid, Bin),

            %% 把场景其他单位信息发给客户端

            {ok, NewMap1};
        _ ->
            ?INFO("[handle_info Exist_Scene][map_id:~p user_id:~p user_name:~p]"
                    ,[Map#map.id, MapRole#map_role.rid, MapRole#map_role.name]),
            {ok, Map}
    end,
    {noreply, NewMap};
%% 玩家离开场景
handle_info({role_levae, RolePid}, Map) ->
    {ok, NewMap} = case get({role, RolePid}) of
        undefined ->
            ?INFO("[map:role_levae RoleNotExist]"),
            {ok, Map};
        #map_role{rid = RoleID, platform_id = Platform, zone_id = ZoneID
            , x = X, y = Y} ->
            %% 移除玩家在进程字典数据
            erlang:erase({role, RolePid}),
            %% 离开格子
            map_grid:leave(Map#map.grid_pid, RoleID, Platform, ZoneID, X, Y),
            %% 场景人数减少
            NewMap1 = Map#map{num = Map#map.num - 1},
            %% 更新场景列表
            sync(NewMap1),

            {ok, NewMap1}
    end,
    {noreply, NewMap};
handle_info(_Info, State) ->
    {noreply, State}
.

terminate(_Reason, State) ->
    {normal, State}
.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.
