
-module(test_sup).
-behaviour(supervisor).

-export([start_link/0, init/1, start_child/0]).

-define(SUP_CHILD(M, A), {M, {M, start_link, A}, permanent, 6000, worker, [M]}).

-include("common.hrl").

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, [])
.

init([]) ->
    ?INFO("supervisor start~n"),
    {ok, {{simple_one_for_one, 0, 4}, [
        ?SUP_CHILD(tester, [])
    ]}}
.

start_child() ->
    supervisor:start_child(?MODULE, [])
.

