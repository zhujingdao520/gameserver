
-module(erl_element_sup).
-behaviour(supervisor).

% API
-export([start_link/0,
        start_child/2
        ]).

% callback
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    RestartStrategy = {simple_one_for_one, 0, 1},
    ChildSpec = [
        {erl_server, {erl_server, start_link, []}, temporary, brutal_kill, worker,[erl_server]}
    ],
    {ok,{RestartStrategy, ChildSpec}}.

start_child(Value, Lease_time) ->
    supervisor:start_child(?SERVER, [Value, Lease_time]).
