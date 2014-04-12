
%% 上个场景
-record(pos_history,{
    scene_id        = 0
    ,platform_id    = 1
    ,zone_id        = 1
    ,scene_x        = 0
    ,scene_y        = 0
    }).

-record(pos, {
    scene_id        = 0
    ,platform_id    = 1
    ,zone_id        = 1
    ,scene_x        = 0
    ,scene_y        = 0
    ,scene_key      = 0
    ,map_pid        = undefined
    ,grid_pid       = undefined
    %% 上次退出场景
    ,last           = undefined  ::#pos_history{}
    }).

