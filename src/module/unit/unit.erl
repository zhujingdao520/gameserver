
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NPC 状态:
% NPC state: freeze(定住) -> combat(战斗) -> trace(追踪)
% NPC 命令:
% NPC order: attck(攻击) -> guard(守卫) -> move(移动) -> defence(防御) -> patrol(巡逻)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-module(unit).

% -behaviour(gen_fsm).

% -include("unit.hrl").

% %% callback
% -export([init/1
%     ,handle_event/3
%     ]).

% %% API
% -export([start_link/0]).

% %% @doc 创建一个单元
% start_link() ->
%     gen_fsm:start_link(?MODULE, [], []).

% %% @doc 初始化
% -spec init(lists()) -> {ok, defense, #unit{}} | {error, atom()}.
% init([]) ->
%     NewState = #unit{},

%     {ok, defense, NewState}.

% handle_event(_Event, StateName, State) ->
%     {next_state, StateName, State}.

% handle_info({order, Order}, StateName, State) ->

%     continue(StateName, State);
% handle_info(_Info, StateName, State) ->
%     {next_state, StateName, State}.

% handle_sync_event(_Event, _From, StateName, State) ->
%     Reply = StateName,
%     {reply, Reply, StateName, State}.

% terminate(Reason, StateName, State) ->
%     {ok, normal}.

% code_change(_OldVsn, StateName, State, _Extra) ->
%     {ok, StateName, State}.

% %% -----------------------------------------------------------------------------
% %% 状态接口
% %% -----------------------------------------------------------------------------
% % 对单元增加指令
% -spec order(pid(), #unit_order{}) -> {error, atom()} | ok.
% order(Pid, Order) ->
%     Pid ! {order, Order};
% order({ID, BaseID}, Order) ->
%     ok
%     .

% freeze(timeout, State) ->


% .

% % 毫秒
% -spec time_left(integer(), tuple()) -> integer().
% time_left(TimeMax, Begin) ->
%     Val = erlang:trunc(TimeMax - timer:now_diff(erlang:now(), Begin)/1000),
%     if
%         Val > 0 -> Val;
%         _ -> 0
%     end.

% %% -----------------------------------------------------------------------------
% %% 私有接口
% %% -----------------------------------------------------------------------------
% -spec continue(atom(), #unit{}) -> {next_state, atom(), #unit{}}.
% continue(combat, State) ->
%     {next_state, combat, State, time_left(10000, State#unit.ts)}; %% 10秒检查一次战斗
% continue(move, State) ->
%     {next_state, move, State, 1000} %% 1秒一次移动
%     .