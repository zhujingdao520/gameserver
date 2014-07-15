
-module(aoi_msg).
-behaviour(gen_server).

%% API
-export([start_link/0]).

%% CALLBACK
-export([
    init/1
    ,handle_call/3
    ,handle_cast/2
    ,handle_info/2
    ,terminate/3
    ,code_chnage/2
    ]).


-define(OPERATION_TCP, [binary
                ,{packet, 0}            %% tcp 原封不动的数据包发送出去
                ,{active, false}
                ,{exit_on_close, false} %% socket 关闭后缓冲数据还会发出去
                ,{nodelay, false}       %% 少量数据也发送
                ,{reuseaddr, true}      %% 地址是否可重用
                ,{send_timeout, 15000}  %% 15000 收不到消息发出{error, timeout}
                ,{delay_send, true}     %% 每个port 维护一个发送队列，消息都是
                                        %% 存在队列，等待可写时才把消息发送出去
                ]).

-include("common.hrl").

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], [])
.

init([]) ->
    {ok, Socket} = gen_tcp:connect("localhost", 5200, ?OPERATION_TCP),
    put(socket, Socket),
    {ok, #state{}}
.

handle_call(_Request, _From, State) ->
    {reply, State, State}
.

handle_cast(_Request, State) ->
    {noreply, State}
.

handle_info({inet_async, _Socket, _Ref, {error, closed}}, State) ->
    ?INFO("aoi_msg:handle_info error_close"),
    {noreply, State};
handle_info({inet_async, Socket, _Ref, {ok, <<Size:32/little>>}}, State) ->
    prim_inet:async_recv(Socket, Size, -1),
    {noreply, State};
handle_info({inet_async, Socket, _Ref, {ok, <<Code:16/little, _:16/little, Data/binary>>}}, State) ->
    prim_inet:async_recv(Socket, Size, -1),
    {noreply, State};
handle_info({inet_async, _Socket, _Ref, _}, State) ->
    ?INFO("aoi_msg:handle_info recv_error_msg"),
    {noreply, State};
handle_info(_Info, State) ->
    {noreply, State}
.

terminate(_Reason, State) ->
    {normal, State}
.

code_chnage(_OldVSN, State, _Extra) ->
    {ok, State}
.

