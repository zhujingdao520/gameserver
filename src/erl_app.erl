
-module(erl_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _StartArgs) ->
    erl_store:init(),
    env:start_link(),
    case erl_sup:start_link() of
        {ok, Pid} ->
            erl_logger_msg:add_handler(),
            erl_logger_msg1:add_handler(),
            {ok, Pid};
        Other ->
            {error, Other}
    end.

stop(_State) ->
    ok.
