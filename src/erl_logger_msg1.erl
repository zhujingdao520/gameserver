
-module(erl_logger_msg1).
-behaviour(gen_event).
-record(state, {}).

-export([
    init/1,
    add_handler/0,
    delete_handler/0,
    handle_event/2,
    handle_call/2,
    handle_info/2,
    terminate/2,
    code_change/3
    ]).

%% @doc 调用add_handler 回调 init() 的接口
init([]) ->
    {ok, #state{}}.

add_handler() ->
    erl_event:add_handler(?MODULE, []).

delete_handler() ->
    erl_event:delete_handler(?MODULE, []).

handle_event({insert, Key, Value}, State) ->
    error_logger:info_msg("insert(~w, ~w)~n", [Key, Value]),
    {ok, State};
handle_event({delete, Key}, State) ->
    error_logger:info_msg("delete(~w)~n", [Key]),
    {ok, State};
handle_event({look_up, Key, Value}, State) ->
    error_logger:info_msg("look_up(~w, ~w)~n", [Key,Value]),
    {ok, State};
handle_event({test, Key, Value}, State)->
    io:format("==>~w~w",[Key, Value]),
    {ok, State};
handle_event(_Event, State) ->
    {ok, State}.

handle_call(_Request, State) ->
    Reply = State,
    {ok, Reply, State}.

handle_info(_Info, State) ->
    {ok, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

terminate(_Args, State) ->
    {ok, State}.
