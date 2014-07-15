
-module(demo).
-compile([export_all]).

test() ->

   Val = lists:foldr(fun (X, Sum) -> Sum + X end, 0, [1,2,3]),
   io:format("[val:~p~n]",[Val]),


ok.
