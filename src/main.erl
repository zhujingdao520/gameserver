
-module(main).
-export([start/0, stop/0]).

start() ->
    application:start(main).

stop() ->
    application:stop(main).
