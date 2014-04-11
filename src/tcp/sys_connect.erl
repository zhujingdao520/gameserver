
-module(sys_connect).
-behaviour(gen_server).

%% callback
-export([init/1,
        handle_info/2,
        handle_call/3,
        handle_cast/2,
        terminate/2,
        code_change/3
        ]).
%% api
-export([create/1,
        call/5
        ]).

-include("common.hrl").
-include("conn.hrl").

create(Socket) ->
    gen_server:start_link(?MODULE, [Socket], []).

init([Socket]) ->
    {ok, {Address, Port}} = inet:peername(Socket),
    State = #conn{
        socket = Socket
        ,conn_pid = self()
        ,port = Port
        ,address = Address
        ,connect_time = now()
        },
    self() ! read_next,
    {ok, State}.


handle_call(_Request, _Form, State) ->
    Reply = State,
    {ok, Reply, State}.

%% 客户端断开了连接
handle_info({inet_async, _Socket, _Ref, {error, closed}}, State) ->
    ?ERR("[inet_async error_closed]"),
    {stop, normal, State};

%% 收到包头数据(读取包头大小)
handle_info({inet_async, Socket, _Ref, {ok, <<Len:32/little>>}}, State) ->
    prim_inet:async_recv(Socket, Len, 80000), % 读取内容
    {noreply, State};

%% 收到正常数据
handle_info({inet_async, _Socket, _Ref, {ok, <<Code:16/little, _Pad:16/little, Bin/binary>>}}, State) ->
    {ok, NewState} = case routing(Code, Bin, State) of
        {ok, NewState1} -> {ok, NewState1};
        {error, _Reason} -> {ok, State}
     end,
    read_next(NewState);
%% 收到异常数据
handle_info({inet_async, _Socket, _Ref, {ok, _Bin}}, State = #conn{
        account = Account, address = Address, port = Port}) ->
    ?INFO("[客户端发送了无效请求] [Acc:~s IP:~p port:~p]"
            , [Account, Address, Port]),
    {noreply, State};
%% 接收socket数据时发生了未预料的错误
handle_info({inet_async, _Socket, _Ref, {error, Reason}}, State = #conn{
    account = Account, address = Address, port = Port}) ->
    ?INFO("[帐号读取socket数据出错] [Acc:~s IP:~p port:~p reason:~p]"
            , [Account, Address, Port, Reason]),
    {stop, normal, State};
%% 读取下条消息
handle_info(read_next, State) ->
    read_next(State);
%% 发送消息
handle_info({send_data, Bin}, State = #conn{socket = Socket}) ->
    gen_tcp:send(Socket, Bin),
    {noreply, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

%% 退出
terminate(_Reson, State = #conn{account = Account,
            address = Address, port = Port, obj_pid = undefined}) ->
    ?INFO("[terminate socket_exit] [Acc:~s IP:~p port:~p]"
        , [Account, Address, Port]),
    ?INFO("pid:undefined"),
    {normal, State};
terminate(_Reson, State = #conn{account = Account, socket = Socket
            ,address = Address, port = Port, obj_pid = Pid}) ->
    ?INFO("[terminate socket_exit] [Acc:~s IP:~p port:~p]"
        , [Account, Address, Port]),
    ?INFO("pid:~p", [Pid]),
    gen_tcp:close(Socket),
    % Pid ! disconnect,
    % gen_server:cast(Pid, disconnect),
    % role:disconnect(Pid),
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

%% ------------------------------------
%% 私有函数
%% ------------------------------------

%% 路由处理(处理分包逻辑)
routing(Code, Bin, State) ->
    ?INFO("[sys_connect:routing succ][code:~p]",[Code]),
    case mapping:module(game_server, Code) of
        {ok, _NeedAuth, Caller, Parser, ModName} ->
            case Parser:unpack(srv, Code, Bin) of
                {ok, Data} ->
                    {ok, NewState} = call(Caller, Code, ModName, Data, State),
                    {ok, NewState};
                {error, Reason} ->
                    ?ERR("[routing Error] [reason:~w]",[Reason]),
                    {ok, State}
            end;
        {error, Reason} ->
             ?ERR("[routing Error] [reason:~w]",[Reason]),
             {ok, State}
    end.

call(connector, Code, ModName, Data, State = #conn{socket = Socket}) ->
    ?INFO("[call_connector Succ] [code:~w data:~p modname:~p]"
            ,[Code, Data, ModName]),
    case ModName:handle(Code, Data, State) of
        {ok, _} ->
            {ok, State};
        %% 同步state不需要回复客户端
        {sync,NewState} ->
            {ok, NewState};
        %% 同步state需要回复客户端
        {sync, Ret_Data, NewState} ->
            send(Code, Ret_Data, Socket),
            {ok, NewState};
        %% 出错
        {error, Reason} ->
            ?ERR("[call Connector_Error][reason:~w]",[Reason]),
            {ok, State}
    end;
call(object, _Code, _ModName, _Data, State = #conn{object = undefined}) ->
    {ok, State};
call(object, _Code, _ModName, _Data, State = #conn{obj_pid = undefined}) ->
    {ok, State};
call(object, Code, ModName, Data, State = #conn{object = Object, obj_pid = Pid}) ->
     Object:rpc(Pid, Code, ModName, Data),
     {ok, State}
.

send(Code, Data, Socket) ->
    case mapping:module(game_server, Code) of
        {ok, _NeedAuth, _Caller, Parser, _ModName} ->
            case Parser:pack(srv, Code, Data) of
                {ok, Bin} ->
                    gen_tcp:send(Socket, Bin);
                {error, Reason} ->
                    ?ERR("[send error] [code:~w reason:~w]",[Code, Reason])
            end;
        {error,Reason} ->
            ?ERR("[send error] [code:~w reason:~w]",[Code, Reason])
    end.

%% 读取包头大小
read_next(State = #conn{socket = Socket}) ->
    prim_inet:async_recv(Socket, 4, 60000),
    {noreply, State}.

