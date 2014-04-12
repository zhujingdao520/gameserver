
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
]).

-include("map.hrl").

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
    grid_cast(L, Msg)
    ).

%% 获得九宫角色列表
-define(GET_GRID_ROLE_LIST(GX, GY),
    List = [get(P) || P <- ?GRID9(GX, GY)],
    append(List, [])
    ).



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
-spec leave(pid(), #map_role{}) -> ok.
leave(Pid, MapRole) ->
    Pid ! {leave, MapRole}
.


%% 发送消息
-spec grid_cast(list(), binary()) -> ok.
grid_cast([], _Msg) ->
    ok;
grid_cast([Head|Tail], Msg) ->
    do_cast(Head, Msg),
    grid_cast(Tail, Msg)
.

%% 执行发消息
-spec do_cast(#map_role{}, binary()) -> ok.
do_cast(#map_role{pid = Pid}, Msg) ->
    role:send_data(Pid, Msg)
.

%% 所格子角色合成lists
-spec append(list(), list()) -> list().
append([], List) ->
    List;
append([Head|Tail], List) ->
    append(Tail, Head ++ List)
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

handle_info({enter, GX, GY, MapRole}, State) ->
    %% 添加到格子
    put({GX, GY},[MapRole|get({GX, GY})]),

    %% 九宫格的所有玩家信息通知给我
    RoleList = ?GET_GRID_ROLE_LIST(GX, GY),
    {ok, Bin} = proto_10:pack(srv, 2116, {RoleList}),
    role:send_data(MapRole#map_role.pid, Bin),

    %% 自己的信息通知给九宫格的玩家
    {ok, Bin1} = proto_10:pack(srv, 2113, MapRole),
    ?CAST(GX, GY, Bin1),
    {noreply, State};

handle_info({leave, MapRole}, State) ->
    %% 移除格子对象

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
