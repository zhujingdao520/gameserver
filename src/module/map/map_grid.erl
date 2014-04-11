
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

]).

-include("map.hrl").

%% 获得九宫格子
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

%% ---------------------------------------
%% CallBack
%% ---------------------------------------
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

handle_info(_Info, State) ->
    {noreply, State}
.

terminate(_Reason, State) ->
    {normal, State}
.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.