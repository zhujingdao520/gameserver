
-module(test_client).
-behaviour(gen_server).
-export(
[
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    code_change/3,
    terminate/2
]).

-export(
[
    start/0,
    talk/1,
    start_link/0,
    login/1,
    create/1
]).

-record(state, {pid}).
-include("common.hrl").

start() ->
    start_link().
    % login().

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

talk(Pid) ->
    {ok, Data} = proto_10:pack(cli, 1099, {1}),
    gen_server:cast(Pid, {send, Data}).

init([]) ->
    {ok, Pid} = case gen_tcp:connect("localhost", 5200, [binary,{packet, 0}]) of
        {ok, Socket} ->
            {ok, Pid1} = cli_connect:create(Socket),
            %% 转
            gen_tcp:controlling_process(Socket, Pid1),
            {ok, Pid1};
        {error, Reson} ->
            io:format("connect Error[~w]", Reson)
    end,
    % erlang:register(cli_pid, Pid),
    login(self()), %% 请求登陆
    % create(self()), %% 请求创建角色
    {ok, #state{pid = Pid}}.

handle_call(_Request, _Form, State) ->
    Reply = State,
    {reply, Reply, State}.

handle_cast({login, PlatformID, ZoneID}, State = #state{pid = Pid}) ->
    ?INFO("[client login]"),
    {ok, Data} = proto_11:pack(cli, 1120, {8, PlatformID, ZoneID}),
    gen_server:cast(Pid, {send_data, Data}),
    {noreply, State};
handle_cast({create, Name, Job}, State = #state{pid = Pid}) ->
    {ok, Data} = proto_11:pack(cli, 1105, {Name, Job}),
    gen_server:cast(Pid, {send_data, Data}),
    {noreply, State};
handle_cast({send, Bin}, State = #state{pid = Pid}) ->
    ?INFO("Pid:~w",[Pid]),
    gen_server:cast(Pid, {send_data, Bin}),
    {noreply, State};
handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reson, State) ->
    {normal, State}.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}.

%% -----------------------------------------------
%% 对外接口
%% -----------------------------------------------
login(Pid) ->
    gen_server:cast(Pid, {login, 1, 1})
.

create(Pid) ->
    gen_server:cast(Pid, {create, <<"test">>, 1})
.
