
%% 获得一个随机种子
-module(sys_rand).
-behaviour(gen_server).

%% API
-export([get_seed/0, start_link/0]).

%% callback
-export([init/1
        ,handle_call/3
        ,handle_info/2
        ,handle_cast/2
        ,terminate/2
        ,code_change/3
        ]).

-record(state, {seed}).

get_seed() ->
    gen_server:call(?MODULE, get_seed).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init([]) ->
    {ok, #state{}}.

handle_call(get_seed, _From, State) ->
    case catch State#state.seed of
        undefined -> random:seed(erlang:now());
        S -> random:seed(S)
    end,
    Seed = {random:uniform(999999), random:uniform(999999), random:uniform(999999)},
    {reply, Seed, State#state{seed = Seed}};
handle_call(_Request, _From, State) ->
    {reply, State, State}.

handle_info(_Info, State) ->
    {noreply, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

terminate(_Reason, State) ->
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.
