
-module(tester).
-behaviour(gen_server).

%% callback
-export([init/1
        ,handle_info/2
        ,handle_call/3
        ,handle_cast/2
        ,terminate/2
        ,code_change/3
        ]).

%% API
-export([start_link/2
        ,cmd/3
        ,send/2
        ,create/0
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

-define(POS_POOL, {}).

-include("common.hrl").
-include("tester.hrl").


start_link(Host, Port) ->
    gen_server:start_link(?MODULE, [Host, Port], [])
.

%% 处理消息分派
call(Code, Rpc, Bin, State) ->
    case Rpc:handle(Code, Bin, State) of
        {ok, NewState} ->
            read_next(NewState);
        {error, _} ->
            read_next(State);
        _ ->
            read_next(State)
    end
.

%% 上个包没有读取完成
read_next(State = #tester{socket = Socket, read_head = false}) ->
    prim_inet:async_recv(Socket, 4, -1), %% 记取包头
    {noreply, State};
read_next(State) ->
    {noreply, State}
.

%% 发送消息
send(Code, Data) ->
    Socket = get(socket),
    case mapping:module(tester, Code) of
        {ok, Parser, _Rpc} ->
            {ok, Bin} = Parser:pack(cli, Code, Data),
            ?INFO("[tester:send succ][code:~p]",[Code]),
            gen_tcp:send(Socket, Bin);
        _ ->
            ?INFO("[tester:send error][code:~p]",[Code])
    end
.

%% 指令
cmd(Cmd, Obj, Param) ->
     %% ets 第一个数据及第一个字段
    case ets:first(role) of
        '$end_of_table' ->
            cmd(self(), Cmd, Obj, Param);
        RoleID ->
            cmd(RoleID, Cmd, Obj, Param)
    end
.

cmd(Pid, Cmd, Obj, Param) when is_pid(Pid) ->
    Pid ! {cmd, Cmd, Obj, Param};
cmd(RoleID, Cmd, Obj, Param) ->
    case ets:lookup(role, RoleID) of
        [Tester] ->
            cmd(Tester#tester.pid, Cmd, Obj, Param);
        _ ->
            ok
    end
.

%% 创建新角色
create() ->
   tester:start_link("localhost", 5200)
.

% %% 单独登陆接口
% login(RoleID, Platfrom, Zoneid) ->
%      %% 基本信息
%     State = #tester{
%             id = RoleID
%             ,platform_id = Platfrom
%             ,zone_id = Zoneid
%             ,socket = Socket
%             ,pid = self()
%             },
%     tester:cmd(login, test_rpc, {}),
% .

%% -----------------------------------------------------------------------------
%% @回调用函数
%% -----------------------------------------------------------------------------
init([Host, Port]) ->
    {ok, Socket} = gen_tcp:connect(Host, Port, ?OPERATION_TCP),
    put(socket, Socket),
    ets:new(role, [set, named_table, public, {keypos, #tester.id}]),

    %% 基本信息
    State = #tester{socket = Socket, pid = self()},
    %% 请求创建角色
    Key = keypool:get_key(),
    Name = erlang:list_to_binary(lists:concat(["test", Key])),
    tester:cmd(create, test_rpc, {Name, 1}),
    read_next(State),
    ?INFO("[tester:init Succ]"),
    {ok, State}
.

handle_call(_Request, _From, State) ->

    {reply, State}
.

handle_cast(_Request, State) ->

    {noreply, State}
.

handle_info({inet_async, _Sock, _Ref, {error, closed}}, State) ->
    ?INFO("[tester:handle_info socket_error_close]"),
    {noreply, State};
%% 读取包大小
handle_info({inet_async, Socket, _Ref, {ok, <<Len:32/little>>}}, State) ->
    prim_inet:async_recv(Socket, Len, -1),
    {noreply, State};
%% 读取包内容
handle_info({inet_async, _Socket, _Ref, {ok, <<Code:16/little, _:16/little, Bin/binary>>}}, State) ->
    %% 进行分包
    ?INFO("[tester:recv Succ][code:~p]",[Code]),
    case mapping:module(tester, Code) of
        {ok, Parser, Rpc} ->
            case Parser:unpack(cli, Code, Bin) of
                {ok, Data} ->
                    call(Code, Rpc, Data, State);
                _ ->
                    read_next(State)
            end;
        _ ->
            read_next(State)
    end;
%% 收到未知消息
handle_info({inet_async, _Socket, _Ref, {ok, _Bin}}, State) ->
    ?INFO("[tester:handle_info recv_unknown_msg]"),
    {noreply, State};
handle_info({cmd, Cmd, Obj, Param}, State) ->
    {ok, NewState} = Obj:handle(Cmd, Param, State),
    {noreply, NewState};
handle_info({move}, State) ->

    {noreply, State};
handle_info(Info, State) ->
    ?INFO("[Info:~p]",[Info]),
    {noreply, State}
.

terminate(_Reason, State) ->
    ?INFO("[tester:terminate exit_connect]"),
    {normal, State}
.

code_change(_OldVSN, State, _Extra) ->
    {ok, State}
.
