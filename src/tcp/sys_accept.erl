
-module(sys_accept).
-behaviour(gen_server).
%% api
-export([start_link/1]).

%% callback
-export([
    init/1,
    handle_info/2,
    handle_cast/2,
    handle_call/3,
    terminate/2,
    code_change/3
    ]).

-record(state, {lsocket = undefined}).

start_link(LSocket) ->
    gen_server:start_link(?MODULE, [LSocket], []).

init([LSocket]) ->
    self() ! loop,
    {ok, #state{lsocket = LSocket}}.

handle_call(_Request, _From, State) ->
    Reply = State,
    {ok, Reply, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(loop, State = #state{lsocket = LSocket}) ->
    case gen_tcp:accept(LSocket) of
        {ok, Socket} ->
            gen_tcp:controlling_process(Socket, spawn(fun () ->accept(Socket) end));
        {error, Reson} ->
            io:format("接受失败[~w]",[Reson])
    end,
    self() ! loop,
    {noreply, State};

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reson, State) ->
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.


%% ---------------------------------------------
%% 私有函数
%% ---------------------------------------------
accept(Socket) ->
    {ok, Pid} = sys_connect:create(Socket),
    gen_tcp:controlling_process(Socket, Pid),
    self() ! loop. %%  等待下个
