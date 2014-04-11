
-module(erl_event).
-export([
    start_link/0,
    add_handler/2,
    delete_handler/2,
    look_up/2,
    delete/1,
    insert/2
    ]).

start_link() ->
    gen_event:start_link({local, ?MODULE}).

add_handler(Handler, Args) ->
    gen_event:add_handler(?MODULE, Handler, Args).

delete_handler(Handler, Args) ->
    gen_event:delete_handler(?MODULE, Handler, Args).

look_up(Key, Value) ->
    gen_event:notify(?MODULE, {look_up, Key, Value}).

insert(Key, Value) ->
    gen_event:notify(?MODULE, {insert, Key, Value}),
    gen_event:notify(?MODULE, {test, Key, Value}).

delete(Key) ->
    gen_event:notify(?MODULE, {delete, Key}).
