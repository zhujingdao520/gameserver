
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
-export([start_link/0
        ,cmd/4
        ,send/3
    ]).


-define(POS_POOL, {{30, 20}, {40, 30}, {50, 60}, {45, 56}, {80, 80}}).

-include("common.hrl").
-include("tester.hrl").


start_link() ->
    gen_server:start_link(?MODULE, [], [])
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
read_next(State = #tester{socket = _Socket, read_head = false}) ->
    % prim_inet:async_recv(Socket, 4, -1), %% 记取包头

    {noreply, State};
read_next(State) ->
    {noreply, State}
.

%% 发送消息
send(Code, Data, Socket) ->
    % Socket = test_mgr:get_socket(),
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
cmd(Cmd, Obj, Param, State) ->
    State#tester.pid ! {cmd, Cmd, Obj, Param}
.

% cmd(Pid, Cmd, Obj, Param) when is_pid(Pid) ->
%     Pid ! {cmd, Cmd, Obj, Param};
% cmd(RoleID, Cmd, Obj, Param) ->
%     case ets:lookup(role, RoleID) of
%         [Tester] ->
%             cmd(Tester#tester.pid, Cmd, Obj, Param);
%         _ ->
%             ok
%     end
% .

%% @doc 定时移动
-spec move_loop(#tester{}, integer(), list()) -> {ok, #tester{}}.
move_loop(State = #tester{pid = Pid, x = X, y = Y}, Index, Path) ->
    NIndex = Index + 3,
    Len = erlang:length(Path),
    {NIndex1 ,NewPath1} = if
        NIndex > Len ->
            Rand = util:rand(1, erlang:size(?POS_POOL)),
            {Des_x, Des_y} = erlang:element(Rand, ?POS_POOL) ,
            NewPath = astar:start_find_path(1, X, Y, Des_x, Des_y),
            {0, NewPath};
        true ->
            {TX, TY} = lists:nth(NIndex, Path),
            tester:cmd(move, test_rpc, {TX, TY, 0}, State),
            {NIndex ,Path}
    end,
    %% 1秒移动一次
    erlang:send_after(500, Pid, {move_loop, NewPath1, NIndex1}),
    {ok, State}.


%% -----------------------------------------------------------------------------
%% @回调用函数
%% -----------------------------------------------------------------------------
init([]) ->
    Socket = test_mgr:get_socket(),
    %% 基本信息
    State = #tester{socket = Socket, pid = self()},
    %% 请求创建角色
    Key = keypool:get_key(),
    Name = erlang:list_to_binary(lists:concat(["test", Key])),
    % Param ={
    %     1,% calendar:datetime_to_gregorian_seconds(calendar:local_time()),% uint32  login_time
    %     1,% int32   plat_id
    %     ?SERVER_ID,% int16   server_id
    %     1,% int8    anti_wallow
    %     1,% int8    avatar
    %     1,% int8    profession
    %     1,% int8    role_sex
    %     1,% uint16  screen_width
    %     1,% uint16  screen_height
    %     50,% int32   package_size
    %     erlang:list_to_binary("2253"),% <<"1">>,% string  pname
    %     <<"1">>,% string  login_str
    %     Name,% string  user_name
    %     <<"1">>,% string  imei_number
    %     <<"1">>,% string  imsi_number
    %     <<"1">>,% string  qudao_number
    %     <<"1">>,% string  app_number
    %     <<"1">>,% string  user_phone
    %     <<"1">>,% string  system_type
    %     <<"1">>,% string  phone_model
    %     <<"1">>,% string  plat_type
    %     <<"1">>,% string  network_type
    %     <<"1">>% string  package_name
    % },
    % tester:cmd(create, test_rpc, Param, State),
    tester:send(1003, {18603, 2, <<"亓官安倰">>, <<"2">>}, Socket),
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
handle_info({tcp, _Socket, <<Len:32/little, Code:16/little, _:16/little, Bin/binary>>}, State) ->
    ?INFO("[tester:recv Succ][code:~p]",[Code]),
    {_, NewState} = case mapping:module(tester, Code) of
        {ok, Parser, Rpc} ->
            case Parser:unpack(cli, Code, Bin) of
                {ok, Data} ->
                    call(Code, Rpc, Data, State);
                _ ->
                    read_next(State)
            end;
        _ ->
            read_next(State)
    end,
    {noreply, NewState};

handle_info({tcp_closed, _Socket}, State) ->
    ?INFO("[tester:handle_info tcp_closed]"),
    {noreply, State};

handle_info({move_loop, Path, Index}, State) ->
    {ok, NewState} = move_loop(State, Index, Path),
    {noreply, NewState};
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
