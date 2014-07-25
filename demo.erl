
-module(demo).
-compile([export_all]).

test() ->

   Val = lists:foldr(fun (X, Sum) -> Sum + X end, 0, [1,2,3]),
   io:format("[val:~p~n]",[Val]),


ok.

%% 排序实现
sort([]) ->
    [];
sort([H|T]) ->
    sort([X || X <- T, X < H]) ++ [H] ++ sort([X || X <- T, X >= H])
.

%% 定时器实现
timer(CD , Func) ->
    spawn(fun () -> timer_loop(CD , Func) end).

cancel(Pid) ->
    Pid ! cancel.

timer_loop(CD, Func) ->
    receive
        cancel ->
            io:format("cancel succ")
    after CD ->
        Func()
    end.

%% 步长为1的for循环
for(Max, Max, F) -> [F(Max)];
for(I, Max, F) ->
    [F(I) | for(I + 1, Max, F)].

