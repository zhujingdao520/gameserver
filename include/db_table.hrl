
%%% ---------------------
%%% 数据库字段
%%% ---------------------
%% 玩家创建角色基本数据
-record(user_tab, {
    user_id = 0         ::integer()
    ,name = <<>>        ::binary()
    ,job = 0            ::integer()
    ,sex = 0            ::integer()
    ,platform = 0       ::integer()
    ,create_itme = 0    ::integer()
    ,scene_id = 0       ::integer()
    ,scene_key = 0      ::integer()
    ,scene_x = 0        ::integer()
    ,scene_y = 0        ::integer()
    ,last_scene_id = 0  ::integer()
    ,last_scene_key = 0 ::integer()
    ,last_scene_x = 0   ::integer()
    ,last_scene_y = 0   ::integer()
    ,level = 1          ::integer()
    ,exp = 1            ::integer()
    ,coin = 0           ::integer()
    ,gold = 0           ::integer()
    ,vip_level= 0       ::integer()
    ,change_state       ::integer() %% 状态:insert、update、nochange
 }).

