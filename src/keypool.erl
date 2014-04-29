
-module(keypool).
-behaviour(gen_server).

%% callback
-export([init/1
        ,handle_info/2
        ,handle_cast/2
        ,handle_call/3
        ,terminate/2
        ,code_change/3
    ]).

%% api
-export([start_link/0
    ,get_key/0
    ]).

-record(state, {key = 1}).

-include("common.hrl").

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], [])
.

get_key() ->
    gen_server:call(?MODULE, get_key)
.

%% -----------------------------------------------------------------------------
%% 回调用
%% -----------------------------------------------------------------------------
init([]) ->
    ?INFO("[keypool:init Succ]"),
    {ok, #state{}}
.

handle_call(get_key, _From, State = #state{key = Key}) ->
    NewState = State#state{key = Key + 1},
    {reply, NewState#state.key, NewState};
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
