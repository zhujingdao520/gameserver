
-module(test_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_Application, _Type) ->
    test_sup:start_link(),
    % erlang:spawn(fun () -> astar:start() end),
    astar:start(),
    keypool:start_link()

    % tester:start_link(Host, Port)
    % ok
.

stop(_Application) ->
    ok
.
