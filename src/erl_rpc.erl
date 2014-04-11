
-module(erl_rpc).
-export([
    insert/2,
    lookup/1,
    delete/1
    ]).

insert(Key, Value) ->
    case erl_store:lookup(Key) of
        {ok, Pid} ->
            erl_server:replace(Pid, Value);
        {error, _} ->
            {ok, Pid} = erl_server:create(Value),
            erl_store:insert(Key, Pid),
            erl_event:insert(Key, Value)
    end.

lookup(Key) ->
    try erl_store:lookup(Key) of
        {ok, Pid} ->
            {ok, Value} = erl_server:fetch(Pid),
            erl_event:look_up(Key, Value),
            Value
    catch
        _Class:_Exception ->
            {error, not_found}
    end.

delete(Key) ->
    try erl_store:lookup(Key) of
        {ok, Pid} ->
            erl_server:delete(Pid),
            erl_event:delete(Key)
    catch
        _Class:_Exception ->
            {error, not_found}
    end.



