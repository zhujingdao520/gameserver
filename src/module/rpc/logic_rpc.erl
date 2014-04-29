
-module(logic_rpc).
-export([handle/3]).

-include("role.hrl").
-include("conn.hrl").
-include("common.hrl").


%% 请求进入场景
handle(1030, {0,0,_}, Role = #role{scene = #pos{scene_id = MapID, scene_x = X
        , scene_y = Y, last = Last}}) ->
    %% 进入当前场景
    Ret = case map_mgr:role_enter(MapID, X, Y, Role) of
        {ok, NewRole} -> {ok, NewRole};
        _ ->
            {MapID2, X2, Y2} = ?MAIN_CITY,
            case Last of
                %% 进入上个场景
                #pos_history{scene_id = MapID1, scene_x = X1, scene_y = Y1} ->
                    case map_mgr:role_enter(MapID1, X1, Y1, Role) of
                        {ok, NewRole1} -> {ok, NewRole1};
                        _ -> %% 进入新手村
                          map_mgr:role_enter(MapID2, X2, Y2, Role)
                    end;
                _ ->
                    map_mgr:role_enter(MapID2, X2, Y2, Role)
            end
    end,
    case Ret of
        {ok, R} -> {ok, R};
        {error, _Reason} ->
            ?INFO("[client_rp:handle EnterSceneFail][scene_id:~p x:~p y:~p]",[MapID, X, Y]),
            {ok, Role}
    end;

%% 请求进入场景
handle(1031, _Param, Role = #role{user_id = RoleID, platform = Plat_id, zone_id = Zone_id
        , name = Name, level = Level, job= Classess, vip_level = VipLevel, coin = Coin
        , gold = Gold, speed = Speed, pid = Pid
        , scene = #pos{scene_id = SceneID, scene_x = X, scene_y = Y}}) ->
    Param1 = {RoleID, Plat_id, Zone_id, Name, Level, Classess
            , VipLevel, SceneID, X, Y, Coin, Gold, 0, Speed, 0},
    role:send(Pid, 1031, Param1),
    {ok, Role};
handle(1032, {X, Y, _Dir}, Role) ->
    %% 后面进行阻挡点的判断
    map:role_move(Role, X, Y),
    {ok, Role}
.
