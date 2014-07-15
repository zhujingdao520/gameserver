
-module(battle).
-behaviour(gen_fsm).


%% CALLBACK
-export([init/1
        ,handle_info/3
        ,handle_event/3
        ,terminate/3
        ,handle_sync_event/4
        ,code_change/4
        ]).

%% API
-export([start_link/0
        , static/2
        , move/2
        , static/0
        , move/0
        , die/2
        , die/1
        ]).

%% NPC 状态: static -> move -> die -> atk ->by_atk
-record(npc, {state ,name = "", x = 0, y = 0}).

-spec start_link() -> pid().
start_link() ->
    gen_fsm:start_link({local, ?MODULE}, ?MODULE, [], []).


-spec init(list()) -> {ok, atom(), #npc{}}.
init([]) ->
    NPC = #npc{name = "hero", x = 10, y = 10, state = static},
    io:format("init succ ~n"),
    {ok, static, NPC}.

handle_event(_Event, StateName, State) ->
    {next_state, StateName, State}.

handle_sync_event(_Event, _FROM, StateName, State) ->
    Reply = StateName,
    {reply, Reply, StateName, State}.

handle_info(die, _StateName, State) ->
    {next_state, die, State, 1000};
handle_info(_Info, StateName, State) ->
    {next_state, StateName, State}.

terminate(_Reason, StateName, State) ->
    {normal, StateName, State}.

code_change(_OldVsn, StateName, State, _Extra) ->
    {ok, StateName, State}.

%% -------------------------API------------------------------------------------
%% @doc 切到移动状态
move() ->
    gen_fsm:send_event(?MODULE, move).

%% @doc  切到静止状态
static() ->
    gen_fsm:send_event(?MODULE, static).

%% @doc 死亡
die(Pid) ->
    Pid ! die.

% @doc 开始静止状态
-spec static(atom(), #npc{}) ->{next_state, atom(), #npc{}}.
static(Event, State) ->
    case Event of
        move ->
            io:format("static [state:~p]",[State#npc.state]),
            NewState = State#npc{state = move},
            {next_state, move, NewState}
    end.

%% @doc 移动状态
-spec move(atom(), #npc{}) ->{next_state, atom(), #npc{}}.
move(Event, State) ->
    case Event of
        static ->
            io:format("move [state:~p]",[State#npc.state]),
            NewState = State#npc{state = static},
            {next_state, static, NewState}
    end.

die(timeout, State) ->
    io:format("role die:~p ~n",['timeout']),
    {next_state, die, State}.

atk(Event, State) ->
    io:format("role atk").

by_atk(Event, State) ->
    io:format("role by atk").

% ------------------------------------------------------------------------------
% -export([start_link/1]).
% -export([button/1]).

% -export([init/1, locked/2, open/2]).
% -export([code_change/4, handle_event/3, handle_info/3, handle_sync_event/4, terminate/3]).

% -spec(start_link(Code::string()) -> {ok,pid()} | ignore | {error,term()}).
% start_link(Code) ->
%     gen_fsm:start_link({local, ?MODULE}, ?MODULE, [Code], []).

% -spec(button(Digit::string()) -> ok).
% button(Digit) ->
%     gen_fsm:send_event(?MODULE, {button, Digit}).

% init([LockCode]) ->
%     io:format("init: ~p~n", [LockCode]),
%     {ok, locked, {[], LockCode}}.

% locked({button, Digit}, {SoFar, Code}) ->
%     io:format("buttion: ~p, So far: ~p, Code: ~p~n", [Digit, SoFar, Code]),
%     InputDigits = lists:append(SoFar, Digit),
%     case InputDigits of
%         Code ->
%             do_unlock(),
%             {next_state, open, {[], Code}, 10000};
%         Incomplete when length(Incomplete)<length(Code) ->
%             {next_state, locked, {Incomplete, Code}, 5000};
%         Wrong ->
%             io:format("wrong passwd: ~p~n", [Wrong]),
%             {next_state, locked, {[], Code}}
%     end;
% locked(timeout, {_SoFar, Code}) ->
%     io:format("timout when waiting button inputting, clean the input, button again plz~n"),
%     {next_state, locked, {[], Code}}.

% open(timeout, State) ->
%     do_lock(),
%     {next_state, locked, State}.

% code_change(_OldVsn, StateName, Data, _Extra) ->
%     {ok, StateName, Data}.

% terminate(normal, _StateName, _Data) ->
%     ok.

% handle_event(Event, StateName, Data) ->
%     io:format("handle_event... ~n"),
%     unexpected(Event, StateName),
%     {next_state, StateName, Data}.

% handle_sync_event(Event, From, StateName, Data) ->
%     io:format("handle_sync_event, for process: ~p... ~n", [From]),
%     unexpected(Event, StateName),
%     {next_state, StateName, Data}.

% handle_info(Info, StateName, Data) ->
%     io:format("handle_info...~n"),
%     unexpected(Info, StateName),
%     {next_state, StateName, Data}.


% %% Unexpected allows to log unexpected messages
% unexpected(Msg, State) ->
%     io:format("~p RECEIVED UNKNOWN EVENT: ~p, while FSM process in state: ~p~n",
%               [self(), Msg, State]).
% %%
% %% actions
% do_unlock() ->
%     io:format("passwd is right, open the DOOR.~n").

% do_lock() ->
%     io:format("over, close the DOOR.~n").

% ------------------------------------------------------------------------------
% -behaviour(gen_fsm).

% %% API
% -export([start_link/0]).

% %% gen_fsm callbacks
% -export([init/1, static/2, moving/2, handle_event/3,
%      handle_sync_event/4, handle_info/3, terminate/3, code_change/4]).

% -export([hero_join/0, hero_leave/0]).

% -define(SERVER, ?MODULE).

% -record(npc, {state}).

% start_link() ->
%     gen_fsm:start_link({local, ?SERVER}, ?MODULE, [], []).

% %% 初始化NPC为静止状态
% init([]) ->
%     io:format("init...~n"),
%     % State = #npc{state = static},
%     State = #npc{},
%     io:format("init State: ~p~n", [State]),
% {ok,static,State}.

% %% 英雄进入视野
% hero_join() ->
%     gen_fsm:send_event(?SERVER, hero_join).

% %% 英雄离开视野
% hero_leave() ->
%     gen_fsm:send_event(?SERVER, hero_leave).

% %% 静止状态下，接受来自客户端的事件
% static(Event, State) ->
%     io:format("12123"),
%     case Event of
%     hero_join -> %% 英雄进入视野
%         do_moving(), %% 执行动作
%         % NewState = State#npc{state = moving},
%         io:format("npc set state: ~p~n", [State]),
%         {next_state, moving, State}
%     end.

% %% 移动状态下，接受来自客户端的事件
% moving(Event, State) ->
%     case Event of
%     hero_leave -> %% 英雄离开视野
%         do_static(), %% 执行动作
%         NewState = State#npc{state = static},
%         io:format("npc set state: ~p~n", [NewState]),
%         {next_state, static, NewState}
%     end.

% handle_event(_Event, StateName, State) ->
%     {next_state, StateName, State}.

% handle_sync_event(_Event, _From, StateName, State) ->
%     Reply = ok,
%     {reply, Reply, StateName, State}.

% handle_info(_Info, StateName, State) ->
%     {next_state, StateName, State}.

% terminate(_Reason, _StateName, _State) ->
%     ok.

% code_change(_OldVsn, StateName, State, _Extra) ->
%     {ok, StateName, State}.

% %% NPC 开始移动，进入移动状态
% do_moving() ->
%     io:format("npc beigin moving...~n").

% %% NPC 停止移动，进入静止状态
% do_static() ->
%     io:format("npc stop moving, join static...~n").