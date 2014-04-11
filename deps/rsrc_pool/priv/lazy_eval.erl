-module(lazy_eval).
-export([next/1, test/2]).

next(Num) -> fun() -> [Num|next(Num+1)] end.

test(Seq, _Fun) when Seq =:= 100 -> [Seq];
test(Seq, Fun) when Seq < 100 ->
        [Val|Func] = Fun(),
        io:format("~p ~p~n", [Val, Func()]),
        [Val | test(Seq + 1, Func) ].