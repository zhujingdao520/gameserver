
-module(erl_test).
-compile([export_all]).
% -export([connect/0, rec_data/2]).
-define(PATH, "www.googal.com.hk").

connect() ->
    {ok, Socket} = gen_tcp:connect("www.google.com.hk", 80, [binary, {packet,0}]),
    gen_tcp:send(Socket, "GET / HTTP/1.0rnrn"),
    rec_data(Socket, []).

rec_data(Socket, Param) ->
    receive
        {tcp, Socket, Bin} ->
            rec_data(Socket, list_to_binary([Bin|Param]));
        {tcp_closed, _Socket} ->
            Param
    end.
