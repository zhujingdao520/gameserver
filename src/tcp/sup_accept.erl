
-module(sup_accept).
-behaviour(supervisor).

-export([start_link/0, init/1, start_child/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).


init([]) ->
    RestartStrategy = {simple_one_for_one, 1, 50},
    ChildSpec = [
        {sys_accept, {sys_accept, start_link, []}, temporary, 2000, worker, [sys_accept]}
    ],
    {ok, {RestartStrategy,ChildSpec}}.

start_child(Socket) ->
    supervisor:start_child(?MODULE, [Socket]).
