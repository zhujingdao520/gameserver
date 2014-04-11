
-module(env).
-behaviour(gen_server).
-define(PATH_CNF, "server.cfg").

%% Callback
-export([
    init/1
    ,handle_call/3
    ,handle_cast/2
    ,handle_info/2
    ,terminate/2
    ,code_change/3
    ]).

-export([start_link/0, get_cnf/1]).

-record(state, {}).
-include("common.hrl").

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], [])
.


get_cnf(Key) ->
    case ets:lookup(env, Key) of
        [{Key, Val}] -> Val;
        [] ->undefined
    end
.

init([]) ->
    ets:new(env, [set, named_table, public, {keypos, 1}]),
    case util:load(?PATH_CNF) of
       {ok, Res} ->
           [ets:insert(env, {K, V}) || {K, V} <- Res];
        {error, _Reason} ->
            ?INFO("[env:load Error][加载服务器配置表出错]")
    end,
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

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.

