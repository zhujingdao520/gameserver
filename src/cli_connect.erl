
-module(cli_connect).
-behaviour(gen_server).
-include("common.hrl").
%% callback
-export([init/1]).
%% api
-export([create/1,
        handle_info/2,
        handle_call/3,
        handle_cast/2,
        terminate/2,
        code_change/3
        ]).

-record(state, {socket,
                connpid
                }).

create(Socket) ->
    gen_server:start_link({local, ?MODULE},?MODULE, [Socket], []).

init([Socket]) ->
    State = #state{socket = Socket, connpid = self()},
    self() ! read_next,
    {ok, State}.

handle_call(_Request, _Form, State) ->
    Reply = State,
    {ok, Reply, State}.

handle_info({tcp, _Socket, <<_Len:32/little, Code:16/little, _Pad:16/little, Bin/binary>>}, State) ->
    routing(Code, Bin, State),
    {noreply, State};
handle_info({tcp_closed, _Socket},State) ->
    ?ERR("[Client tcp_closed]"),
    {noreply, State};
handle_info({tcp_error, _Socket, _Reason}, State) ->
    ?ERR("[Client Tcp_error]"),
    {noreply, State};
handle_info(read_next, State) ->
    read_next(State);
handle_info(Request, State) ->
    ?ERR("Recv Other Mgs:~w~n",[Request]),
    {noreply, State}.

handle_cast({send_data, Bin}, State = #state{socket = Socket}) ->
    ?INFO("[Client Send:~p]",[Bin]),
    gen_tcp:send(Socket, Bin),
    {noreply, State};
handle_cast(_Request, State) ->
    {noreply, State}.

terminate(_Reson, State) ->
    ?ERR("[Socket exit]"),
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

%% ------------------------------------
%% 私有函数
%% ------------------------------------

%% 路由处理
routing(Code, Bin, State) ->
    case mapping:module(game_server, Code) of
        {ok, _NeedAuth, _Caller, Parser, ModName} ->
            case Parser:unpack(cli, Code, Bin) of
                {ok, Data} ->
                    call(Code, ModName, Data, State);
                {error, Reason} ->
                    ?ERR(Reason)
            end;
        {error, Reason} ->
             ?ERR(Reason)
    end.

call(_Code, _ModName, Data, #state{socket = Socket} ) ->
    % ?INFO(Data),
    io:format("cli_accept:~w", [Data]).
    % {ok, Bin} = proto_10:pack(cli, 1099, {1}),
    % gen_tcp:send(Socket, Bin).
    % case ModName:handle(Code, Data, State) of
    %      ->
    %         body
    % end.

send(_ConnPid, Data) ->
    Bin = list_to_binary(Data),
    gen_server:cast(self(),{send_data, Bin}).


read_next(State = #state{socket = Socket}) ->
    ?INFO("[Clien Start Recv]~n"),
    prim_inet:async_recv(Socket, 4, 60000), %% 读取包头大小
    {noreply, State}.

