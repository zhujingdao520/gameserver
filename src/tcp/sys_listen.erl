
-module(sys_listen).
-behaviour(gen_server).

-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
    ]).

-export([
        start_link/0
        ]).

-include("common.hrl").
-record(state, {}).
-define(LISTEN_PORT, 5200).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init([]) ->
    case gen_tcp:listen(?LISTEN_PORT, [
            binary
            ,{packet, 0}
            ,{active, false}
            ,{reuseaddr, true}
            ,{nodelay, false}
            ,{delay_send, true}
            ,{exit_on_close, false}
            %% 10000 没有消息过来断开socket
            ,{send_timeout, 10000}
            ,{send_timeout_close, false}]) of
        {ok, LSocket} ->
            start_accept(4, LSocket);
        {error, Reson} ->
            io:format("[Listen Error] [Reson:~w prot:~w]",[Reson, ?LISTEN_PORT])
     end,
    ?INFO("[Listen Success] [prot:~w]", [?LISTEN_PORT]),
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    Reply = State,
    {ok, Reply, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reson, State) ->
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

%%%-----------------------------------
%% 私有函数
%%%-----------------------------------
start_accept(0, _LSocket) ->
    ok;
start_accept(AcceptNum, LSocket) ->
    {ok, _Pid} = sup_accept:start_child(LSocket),
    start_accept(AcceptNum - 1, LSocket).
