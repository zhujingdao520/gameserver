
-module(test).
-compile([export_all]).

start() ->
    application:start(test)
.

stop() ->
    application:stop(test)

.

add(0) ->
    ok;
add(Num) ->
    timer:sleep(1000),
    test_sup:start_child(),
    add(Num - 1).

