
-module(map_grid).
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
    ,enter/4
    ,leave/6
]).

-include("map.hrl").
-include("common.hrl").

%% 获得九宫格子坐标
-define(GRID9(GX, GY),
    [   {GX, GY}
       ,{GX - 1, GY}
       ,{GX + 1, GY}
       ,{GX, GY + 1}
       ,{GX, GY - 1}
       ,{GX - 1, GY - 1}
       ,{GX + 1, GY + 1}
       ,{GX + 1, GY - 1}
       ,{GX - 1, GY + 1}
    ]).

%% 推送消息九宫所有人
-define(CAST(GX, GY, Msg),
    %% 读取每个格子的玩家
    L = [get(P) || P <- ?GRID9(GX, GY)],
    %% 进行发送
    grid_cast(append(L,[]), Msg)
    ).

%% 获得九宫角色列表
% -define(GET_GRID_ROLE_LIST(GX, GY),
%     List = [get(P) || P <- ?GRID9(GX, GY)],
%     Ret = append(List, []),
%     Ret
%     ).



start_link(MapGrid) ->
    gen_server:start_link(?MODULE, [MapGrid], [])
.



%% 初始化格子信息
grid(-1, _Y) ->
    ok;
grid(X, Y) ->
    grid_y(X, Y),
    grid(X - 1, Y)
.

grid_y(_X, -1) ->
    ok;
grid_y(GX, GY) ->
    put({GX, GY}, []),
    ?INFO("[gx:~p gy:~p]", [GX, GY]),
    grid_y(GX, GY - 1)
.

%% -----------------------------------------
%%  @doc 进入格子
%% -----------------------------------------
-spec enter(pid(), integer(), integer(), #map_role{}) -> ok.
enter(Pid, GX, GY, MapRole) ->
  Pid ! {enter, GX, GY, MapRole}
.

%% -----------------------------------------
%%  @doc 离开格子
%% -----------------------------------------
-spec leave(pid(), integer(), integer(), integer(), integer(), integer()) -> ok.
leave(Pid, RoleId, Platform, ZoneID, X, Y) ->
    Pid ! {leave, RoleId, Platform, ZoneID, X, Y}
.


%% 发送消息
-spec grid_cast(list(), binary()) -> ok.
grid_cast([], _Msg) ->
    ok;
grid_cast([Head|Tail], Msg) when is_record(Head, map_role) ->
    do_cast(Head, Msg),
    grid_cast(Tail, Msg);
grid_cast([_Head|Tail], Msg) ->
    grid_cast(Tail, Msg)
.

%% 执行发消息
-spec do_cast(#map_role{}, binary()) -> ok.
do_cast(#map_role{pid = Pid}, Msg) ->
    role:send(Pid, Msg)
.

%% 获得九宫格角色列表
get_grid_role_list(GX, GY) ->
    List = [get(P) || P <- ?GRID9(GX, GY)],
    append(List, [])
.

%% 所格子角色合成lists
-spec append(list(), list()) -> list().
append([], List) ->
    List;
append([Head|Tail], List) when is_list(Head) ->
    append(Tail, Head ++ List);
append([_Head|Tail], List) ->
    append(Tail, List)
.

%% 玩家移动
-spec do_move(#map_role{}, integer(), integer(), integer(), integer()) -> ok.
%% 同格子移动
do_move(MapRole = #map_role{rid = RoleId, platform_id = Platform, zone_id = Zoneid,
        x = X, y = Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
    when GX =:= NewGX andalso GY =:= NewGY ->
    %% X1、Y1 目标坐标 。X、Y 开始坐标
    %% 通知移动包
    {ok, MoveMsg} = proto_10:pack(srv, 1032, {RoleId, Platform, Zoneid, 0, X1, Y1, X, Y}),
    ?CAST(NewGX, NewGY, MoveMsg),
    %% 更新玩家信息
    R = MapRole#map_role{x = X1, y = Y1},
    put({NewGX, NewGY}, lists:keyreplace(RoleId, #map_role.rid, get({NewGX, NewGY}), R));
%% 右下移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX < NewGX) andalso (GY < NewGY) ->

    Leave = [
                {GX - 1, GY - 1},
                {GX + 1, GY + 1},
                {GX - 1, GY + 1},
                {GX - 1, GY},
                {GX, GY + 1}
            ],
    Enter = [
                {NewGX - 1, NewGY - 1},
                {NewGX + 1, NewGY - 1},
                {NewGX + 1, NewGY + 1},
                {NewGX, NewGY - 1},
                {NewGX + 1, NewGY}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);

%% 左下移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX > NewGX) andalso (GY < NewGY) ->

    Leave = [
                {GX + 1, GY - 1},
                {GX + 1, GY + 1},
                {GX - 1, GY + 1},
                {GX + 1, GY},
                {GX, GY + 1}
            ],
    Enter = [
                {NewGX - 1, NewGY + 1},
                {NewGX - 1, NewGY},
                {NewGX - 1, NewGY - 1},
                {NewGX, NewGY - 1},
                {NewGX + 1, NewGY - 1}
            ],

    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 左上移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX > NewGX) andalso (GY > NewGY) ->

    Leave = [
                {GX - 1, GY - 1},
                {GX, GY - 1},
                {GX + 1, GY - 1},
                {GX + 1, GY},
                {GX + 1, GY + 1}
            ],
    Enter = [
                {NewGX - 1, NewGY - 1},
                {NewGX - 1, NewGY},
                {NewGX - 1, NewGY + 1},
                {NewGX, NewGY + 1},
                {NewGX + 1, NewGY + 1}
            ],

    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 右上移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX < NewGX) andalso (GY > NewGY) ->

    Leave = [
                {GX - 1, GY + 1},
                {GX - 1, GY},
                {GX - 1, GY - 1},
                {GX, GY - 1},
                {GX + 1, GY - 1}
            ],
    Enter = [
                {NewGX + 1, NewGY - 1},
                {NewGX + 1, NewGY},
                {NewGX + 1, NewGY + 1},
                {NewGX, NewGY + 1},
                {NewGX - 1, NewGY + 1}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 右边移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX < NewGX) andalso (GY =:= NewGY) ->

    Leave = [
                {GX - 1, GY - 1},
                {GX - 1, GY},
                {GX - 1, GY + 1}
            ],
    Enter = [
                {NewGX + 1, NewGY - 1},
                {NewGX + 1, NewGY},
                {NewGX + 1, NewGY + 1}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 左边移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX > NewGX) andalso (GY =:= NewGY) ->

    Leave = [
                {GX + 1, GY - 1},
                {GX + 1, GY},
                {GX + 1, GY + 1}
            ],
    Enter = [
                {NewGX - 1, NewGY - 1},
                {NewGX - 1, NewGY},
                {NewGX - 1, NewGY + 1}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 上边移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX =:= NewGX) andalso (GY > NewGY) ->

    Leave = [
                {GX - 1, GY - 1},
                {GX, GY - 1},
                {GX + 1, GY - 1}
            ],
    Enter = [
                {NewGX - 1, NewGY + 1},
                {NewGX, NewGY + 1},
                {NewGX + 1, NewGY + 1}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
%% 下边移动
do_move(MapRole = #map_role{rid = _RoleId, platform_id = _Platform, zone_id = _Zoneid,
        x = _X, y = _Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY)
        when (GX =:= NewGX) andalso (GY < NewGY) ->

    Leave = [
                {GX - 1, GY + 1},
                {GX, GY + 1},
                {GX + 1, GY + 1}
            ],
    Enter = [
                {NewGX - 1, NewGY - 1},
                {NewGX, NewGY - 1},
                {NewGX + 1, NewGY - 1}
            ],
    cross_grid(Leave, Enter, MapRole, X1, Y1, NewGX, NewGY);
do_move(_MapRole, X1, Y1, _NewGX, _NewGY) ->
    ?INFO("[map_grid:do_move error][x:~p y:~p]",[X1, Y1])
.


%% 移动跨格子
-spec cross_grid(list(), list(), #map_role{}, integer(), integer(), integer(), integer()) -> ok.
cross_grid(Leave, Enter, MapRole = #map_role{rid = RoleId, platform_id = Platform
    , zone_id = Zoneid, x = X, y = Y, gx = GX, gy = GY}, X1, Y1, NewGX, NewGY) ->
    %% 删除旧格子的
    R = MapRole#map_role{x = X1, y = Y1, gx = NewGX, gy = NewGY},
    put({GX, GY}, lists:keydelete(RoleId, #map_role.rid, get({GX, GY}))),

    %% 增加新格子对象
    put({NewGX, NewGY}, [R | get({NewGX, NewGY})]),

    %% 离开格子玩家
    LeaveList = [get({GX1, GY1}) || {GX1, GY1} <- Leave],

    %% 进入格子玩家
    EnterList = [get({GX2, GY2}) || {GX2, GY2} <- Enter],

    {ok, LeaveMsg} = proto_10:pack(srv, 1014, {RoleId, Platform, Zoneid}),
    grid_cast(append(LeaveList, []), LeaveMsg),

    %% X1、Y1 目标坐标 。X、Y 开始坐标,旧格子通知移动包
    {ok, MoveMsg} = proto_10:pack(srv, 1032, {RoleId, Platform, Zoneid, 0, X1, Y1, X, Y}),
    ?CAST(GX, GY, MoveMsg),

    %% 通知其他人新增人入格子
    {ok, Bin} = proto_10:pack(srv, 1013, R),
    grid_cast(append(EnterList,[]), Bin),

    %% 移动消息
    grid_cast(append(EnterList, []), MoveMsg),

    %% 新增加的人发给自己
    {ok, Bin1} = proto_10:pack(srv, 1016, {append(EnterList,[])}),
    role:send(R#map_role.pid, Bin1)
.


%% -----------------------------------------------------------------------------
%% CallBack
%% -----------------------------------------------------------------------------
init([MapGrid = #map_grid{width = Width, height = Heigth}]) ->
    grid(?GX(Width) + 1, ?GY(Heigth) + 1),
    {ok, MapGrid}
.

handle_call(_Request, _From, State) ->

    {reply, State}
.

handle_cast(_Request, State) ->
    {noreply, State}
.

handle_info({move, RoleId, SX, SY, TX, TY}, State) ->
    GX = ?GX(SX),
    GY = ?GY(SY),
    MapRole = lists:keyfind(RoleId, #map_role.rid, get({GX, GY})),
    do_move(MapRole, TX, TY, ?GX(TX), ?GY(TY)),
    {noreply, State};
handle_info({enter, GX, GY, MapRole}, State) ->
    %% 添加到格子
    put({GX, GY},[MapRole|get({GX, GY})]),

    %% 九宫格的所有玩家信息通知给我
    RoleList = get_grid_role_list(GX, GY),
    {ok, Bin} = proto_10:pack(srv, 1016, {RoleList}),
    role:send(MapRole#map_role.pid, Bin),

    %% 自己的信息通知给九宫格的玩家
    {ok, Bin1} = proto_10:pack(srv, 1013, MapRole),
    ?CAST(GX, GY, Bin1),
    {noreply, State};
handle_info({leave, RoleId, Platform, ZoneID, X, Y}, State) ->
    %% 移除格子对象
    GX = ?GX(X),
    GY = ?GY(Y),
    put({GX, GY}, lists:keydelete(RoleId, #map_role.rid, get({GX, GY}))),
    {ok, Bin} = proto_10:pack(srv, 1014, {RoleId, Platform, ZoneID}),
    %% 通知其他人有玩家离开
    ?CAST(GX, GY, Bin),
    %% 打印九宫格的人数
    L = get_grid_role_list(GX, GY),
    ?INFO("[map_grid:leave Succ][user_id:~p remain_num:~p]",[RoleId, erlang:length(L)]),
    {noreply, State};

handle_info(_Info, State) ->
    {noreply, State}
.

terminate(_Reason, State) ->
    {normal, State}
.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.
