
-module(erl_server).
-behaviour(gen_server).

%% api
-export([
    start_link/2,
    create/1,
    fetch/1,
    delete/1,
    replace/2,
    time_left/2,
    test/1
    ]).

%% collback
-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    termination/2,
    code_change/3,
    terminate/2
    ]).

-define(SERVER, ?MODULE).
-define(DEFINE_LEASE_TIME, 60).

-record(state, {value = 0, start_time = 0, lease_time = 0}).
start_link(Value, LeaseTime) ->
    % 创建多个对象不能有模块名
    % gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).
    gen_server:start_link(?MODULE, [Value, LeaseTime], []).


init([Value, Lease_time]) ->
    CurTime = calendar:datetime_to_gregorian_seconds(calendar:local_time()),
    State = #state{
        value = Value,
        start_time = CurTime,
        lease_time = CurTime + Lease_time
    },
    LeaseTime = time_left(CurTime, State#state.lease_time),
    io:format("~p~n",[LeaseTime]),
    {ok, State, LeaseTime}.


handle_call(fetch, _From, State) ->
    #state{
        value = Value,
        start_time = StartTime,
        lease_time = LeaseTime
    } = State,
    {reply, {ok, Value}, State, time_left(StartTime, LeaseTime)}.

handle_cast({replace, Value}, State) ->
    #state{
        start_time = StartTime,
        lease_time = LeaseTime
    } = State,
    {noreply, State#state{value = Value}, time_left(StartTime, LeaseTime)};
handle_cast(delete, State) ->
    erl_store:delete(self()),
    {stop, normal, State}.

handle_info(timeout, State) ->
    io:format("~p~n",[State#state.value]),
    erl_store:delete(self()),
    {stop, normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

terminate(_Reason, State) ->
    {normal, State}.

termination(_Reason, State) ->
    {normal, State}.

%% --------API------------------------------------
test(Pid) ->
    gen_server:call(Pid, test).

fetch(Pid)->
    gen_server:call(Pid, fetch).

replace(Pid, Value) ->
    gen_server:cast(Pid, {replace, Value}).

delete(Pid) ->
    gen_server:cast(Pid, delete).

create(Value) ->
    erl_element_sup:start_child(Value, ?DEFINE_LEASE_TIME).

time_left(_StartTime, infinity) ->
    infinity;
time_left(StartTime, LeaseTime) ->
    CurTime = calendar:datetime_to_gregorian_seconds(calendar:local_time()),
    case LeaseTime - CurTime of
        Time when Time =< 0 -> 0;
        _Time               -> (LeaseTime - StartTime) * 1000
    end.
