
%% 管理客户端所有登陆角色
%% 只要测试在线压力
-module(aoi_test).
-behaviour(gen_server).

%% API
-export([start_link/0]).

%% CALLBACK
-export([init/1
    ,handle_call/3
    ,handle_info/2
    ,handle_cast/2
    ,code_chnage/3
    ,terminate/2
    ]).

-include("aoi.hrl").

-record(state, {}).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], [])
.

init([]) ->
    ets:new(role_list, [set, public, named_table, {keypos, #aoi.id}]),
    {ok, #state{}}
.

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

code_chnage(_OldVSN, State, _Extra) ->
    {ok, State}
.
