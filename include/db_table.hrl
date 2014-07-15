
%%% ---------------------
%%% 数据库表字段
%%% ---------------------

%% 玩家创建角色基本数据
-record(user_info_tab, {
    id
    ,user_id = 0            ::integer()
    ,role_level = 1         ::integer()
    ,name = <<>>            ::binary()
    ,exp = 1                ::integer()
    ,coin = 0               ::integer()
    ,gold = 0               ::integer()
    ,vip_level= 0           ::integer()
    ,task_gold = 0          ::integer()
    ,story_id = 0           ::integer()
    ,speed = 0              ::integer()
    ,silver = 0             ::integer()
    ,online_time_count = 0  ::integer()
    ,last_quit_time = 0     ::integer()
    ,last_save_time = 0     ::integer()
    ,is_online = 0          ::integer()
    ,xinghun = 0            ::integer()
    ,lingli = 0             ::integer()
    ,jiuli = 0              ::integer()
    ,battle_time = 0        ::integer()
    ,next_zero_time = 0     ::integer()
    ,mute_time = 0
    ,privilege_time = 0
    ,score = 0
    ,daily_silver = 0
    ,lotter_num = 0
    ,pangu = 0
    ,vip_time = 0
    ,change_state       ::integer() %% 状态:insert、update、nochange
 }).

%% User 表
-record(user_tab, {
    id = 0                  ::integer()
    ,plat_name = <<>>       ::binary()
    ,user_phome = <<>>      ::binary()
    ,user_name = <<>>       ::binary()
    ,sex = 0                ::integer()
    ,headpicture = 0        ::integer()
    ,professional = 0       ::integer()
    ,scene_id = 0           ::integer()
    ,scene_key = 0          ::integer()
    ,scene_x = 0            ::integer()
    ,scene_y = 0            ::integer()
    ,last_scene_id = 0      ::integer()
    ,last_scene_x = 0       ::integer()
    ,last_scene_y = 0       ::integer()
    ,create_itme = 0        ::integer()
    ,last_login_time = 0    ::integer()
    ,forbid_time = 0        ::integer()
    ,imei_id = <<>>         ::binary()
    ,imsi_id = <<>>         ::binary()
    ,plat_type = <<>>       ::binary()
    ,channel_id = <<>>      ::binary()
    ,application_id = <<>>  ::binary()
    ,scene_width = 0        ::integer()
    ,scene_height = 0       ::integer()
    ,system_type = <<>>     ::binary()
    ,phome_model = <<>>     ::binary()
    ,network_type = <<>>    ::binary()
    ,package_size = 0       ::integer()
    ,imei_id_1 = <<>>       ::binary()
    ,imei_id_2 = <<>>       ::binary()
    ,imei_id_3 = <<>>       ::binary()
    ,imei_id_4 = <<>>       ::binary()
    ,package_name = <<>>    ::binary()
    ,gx = 0                 ::integer()
    ,gy = 0                 ::integer()
    ,adplat_type = <<>>     ::binary()
    }).

%% DB数据返回字段
-record(db_user_param, {
    %% user 表
    user_tab            ::#user_tab{}
    %% 基本数据
    ,user_info_tab      ::#user_info_tab{}
    %% 任务数据
    ,task_tab
    %% 技能数据
    ,skill_tab
    }).

