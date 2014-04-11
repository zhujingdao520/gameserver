
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

]).

-include("map.hrl").

start_link(Map) ->
    gen_server:start_link(?MODULE, [Map], [])
.


%% 更新场景信息
sync(Map) -> ets:insert(map_list, Map).

%% ------------------------------------------------------
%% Callback
%% ------------------------------------------------------
init([Map]) ->
    process_flag(trap_exit, true), %% 转为系统进程
    put(unit_list, []), %% 保存场景单位对象
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

handle_info(role_enter, State) ->
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
