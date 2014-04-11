
-module(role_condition).

-compile([export_all]).

-include("condition.hrl").
-include("role.hrl").

-spec check(list(), #role{}) -> true | {false, _Reason}.
check([], _Role) ->
    true;
check([Cond|Tail], Role) ->
    case check(Cond, Role) of
        true ->
            check(Tail, Role);
        {false, Msg} ->
            {false, Msg}
    end
;
check(#condition{lable = level, op = Op, val = Val}, #role{level = Lev}) ->
    rnt(con(Op, Val, Lev), <<"等级不足">>)
;
check(#condition{lable = job, op = Op, val = Val}, #role{job = Job}) ->
    rnt(con(Op, Val, Job), <<"职业不符">>)
;
check(#condition{lable = coin, op = Op, val = Val}, #role{coin = Coin}) ->
    rnt(con(Op, Val, Coin), <<"铜钱不足">>)
;
check(#condition{lable = gold, op = Op, val = Val}, #role{gold = Gold}) ->
    rnt(con(Op, Val, Gold), <<"元宝不足">>)
.

%% 等于
con(eq, TargetVal, Val) -> TargetVal =:= Val;
%% 小于
con(lt, TargetVal, Val) -> TargetVal < Val;
%% 大于
con(gt, TargetVal, Val) -> TargetVal > Val;
%% 小于等于
con(le, TargetVal, Val) -> TargetVal =< Val;
%% 大于等于
con(ge, TargetVal, Val) -> TargetVal >= Val;
%% 匹配不到
con(_, _TargetVal, _Val) -> false.

% cond(range, TargetVal, Val) -> TargetVal =/= Val.

rnt(true, _Msg) ->
    true;
rnt(false, Msg) ->
    {false, Msg}.