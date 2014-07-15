
-module(db_logic).
-compile([export_all]).
-include("db_table.hrl").
-include("deps/db/include/client_records.hrl").

%% -----------------------------------------------------------------------------
%% @doc 数据保存
%% -----------------------------------------------------------------------------
user_save(Param) ->
    Conn = db_main:get_connection(),


    db_main:return_connection(Conn).


user_first_login(RoleTab) ->
    Conn = db_main:get_connection(),
    % Sql = lists:concat(["insert into user value(NULL", ",'"
    %                 % ,binary_to_list(RoleTab#user_tab.name), "',"
    %                 % ,RoleTab#user_tab.job, ","
    %                 % ,RoleTab#user_tab.sex, ",'"
    %                 % ,RoleTab#user_tab.platform, "',"
    %                 % ,RoleTab#user_tab.create_itme, ","
    %                 % ,RoleTab#user_tab.scene_id, ","
    %                 % ,RoleTab#user_tab.scene_key, ","
    %                 % ,RoleTab#user_tab.scene_x, ","
    %                 % ,RoleTab#user_tab.scene_y, ","
    %                 % ,RoleTab#user_tab.last_scene_id, ","
    %                 % ,RoleTab#user_tab.last_scene_key, ","
    %                 % ,RoleTab#user_tab.last_scene_x, ","
    %                 % ,RoleTab#user_tab.last_scene_y, ","
    %                 % ,RoleTab#user_tab.level , ","
    %                 % ,RoleTab#user_tab.exp , ","
    %                 % ,RoleTab#user_tab.coin , ","
    %                 % ,RoleTab#user_tab.gold , ","
    %                 ,RoleTab#user_tab.vip_level, ")"
    %                 ]),
    % {_,[Ok]} = connection:execute_query(Conn, Sql),
    % UserID = Ok#ok_packet.insert_id,
    % connection:transaction(Conn, F),
    db_main:return_connection(Conn)
    % UserID
.

%% @ user 表数据保存
user_table_save(Conn, UserTabData) ->
    Sql = lists:concat(["update user set "
        ,"plat_name       = ", binary_to_list(UserTabData#user_tab.plat_name), ","
        ,"user_phome      = ", binary_to_list(UserTabData#user_tab.user_phome), ","
        ,"user_name       = ", binary_to_list(UserTabData#user_tab.user_name), ","
        ,"sex             = ", UserTabData#user_tab.sex, ","
        ,"headpicture     = ", UserTabData#user_tab.headpicture, ","
        ,"professional    = ", UserTabData#user_tab.professional, ","
        ,"scene_id        = ", UserTabData#user_tab.scene_id, ","
        ,"scene_key       = ", UserTabData#user_tab.scene_key, ","
        ,"scene_x         = ", UserTabData#user_tab.scene_x, ","
        ,"scene_y         = ", UserTabData#user_tab.scene_y, ","
        ,"last_scene_id   = ", UserTabData#user_tab.last_scene_id, ","
        ,"last_scene_x    = ", UserTabData#user_tab.last_scene_x, ","
        ,"last_scene_y    = ", UserTabData#user_tab.last_scene_y, ","
        ,"create_itme     = ", UserTabData#user_tab.create_itme, ","
        ,"last_login_time = ", UserTabData#user_tab.last_login_time, ","
        ,"forbid_time     = ", UserTabData#user_tab.forbid_time, ","
        ,"imei_id         = ", binary_to_list(UserTabData#user_tab.imei_id), ","
        ,"imsi_id         = ", binary_to_list(UserTabData#user_tab.imsi_id), ","
        ,"plat_type       = ", binary_to_list(UserTabData#user_tab.plat_type), ","
        ,"channel_id      = ", binary_to_list(UserTabData#user_tab.channel_id), ","
        ,"application_id  = ", binary_to_list(UserTabData#user_tab.application_id), ","
        ,"scene_width     = ", UserTabData#user_tab.scene_width, ","
        ,"scene_height    = ", UserTabData#user_tab.scene_height, ","
        ,"system_type     = ", binary_to_list(UserTabData#user_tab.system_type), ","
        ,"phome_model     = ", binary_to_list(UserTabData#user_tab.phome_model), ","
        ,"network_type    = ", binary_to_list(UserTabData#user_tab.network_type), ","
        ,"package_size    = ", UserTabData#user_tab.package_size, ","
        ,"imei_id_1       = ", binary_to_list(UserTabData#user_tab.imei_id_1), ","
        ,"imei_id_2       = ", binary_to_list(UserTabData#user_tab.imei_id_2), ","
        ,"imei_id_3       = ", binary_to_list(UserTabData#user_tab.imei_id_3), ","
        ,"imei_id_4       = ", binary_to_list(UserTabData#user_tab.imei_id_4), ","
        ,"package_name    = ", binary_to_list(UserTabData#user_tab.package_name), ","
        ,"gx              = ", UserTabData#user_tab.gx, ","
        ,"gy              = ", UserTabData#user_tab.gy, ","
        ,"adplat_type     = ", binary_to_list(UserTabData#user_tab.adplat_type)
        ,"where id        = ", UserTabData#user_tab.id
        ]),
    {_,[Ok]} = connection:execute_query(Conn, Sql)
.

%% @user_info 表保存
user_info_table_save(Conn, UserInfoTabData) ->
    Sql = lists:concat(["update user_info set "
        % ,"user_id           = " UserInfoTabData#user_info_tab.role_level, ","
        ,"role_level        = " , UserInfoTabData#user_info_tab.role_level, ","
        ,"exp               = " , UserInfoTabData#user_info_tab.exp, ","
        ,"coin              = " , UserInfoTabData#user_info_tab.coin, ","
        ,"gold              = " , UserInfoTabData#user_info_tab.gold, ","
        ,"vip_level         = " , UserInfoTabData#user_info_tab.vip_level, ","
        ,"task_gold         = " , UserInfoTabData#user_info_tab.task_gold, ","
        ,"story_id          = " , UserInfoTabData#user_info_tab.story_id, ","
        ,"speed             = " , UserInfoTabData#user_info_tab.speed, ","
        ,"silver            = " , UserInfoTabData#user_info_tab.silver, ","
        ,"online_time_count = " , UserInfoTabData#user_info_tab.online_time_count, ","
        ,"last_quit_time    = " , UserInfoTabData#user_info_tab.last_quit_time, ","
        ,"last_save_time    = " , UserInfoTabData#user_info_tab.last_save_time, ","
        ,"is_online         = " , UserInfoTabData#user_info_tab.is_online, ","
        ,"xinghun           = " , UserInfoTabData#user_info_tab.xinghun, ","
        ,"lingli            = " , UserInfoTabData#user_info_tab.lingli, ","
        ,"jiuli             = " , UserInfoTabData#user_info_tab.jiuli, ","
        ,"battle_time       = " , UserInfoTabData#user_info_tab.battle_time, ","
        ,"next_zero_time    = " , UserInfoTabData#user_info_tab.next_zero_time, ","
        ,"mute_time         = " , UserInfoTabData#user_info_tab.mute_time, ","
        ,"privilege_time    = " , UserInfoTabData#user_info_tab.privilege_time, ","
        ,"score             = " , UserInfoTabData#user_info_tab.score, ","
        ,"daily_silver      = " , UserInfoTabData#user_info_tab.daily_silver, ","
        ,"lotter_num        = " , UserInfoTabData#user_info_tab.lotter_num, ","
        ,"pangu             = " , UserInfoTabData#user_info_tab.pangu, ","
        ,"vip_time          = " , UserInfoTabData#user_info_tab.vip_time
        ," where user_id     = " , UserInfoTabData#user_info_tab.user_id
    ]),
    {_,[Ok]} = connection:execute_query(Conn, Sql)
.

%% -----------------------------------------------------------------------------
%% @doc 玩家数据的初始
%% -----------------------------------------------------------------------------
-spec user_init(integer()) -> #db_user_param{}.
user_init(UserID) ->
    %% 得到一个连接
    Conn = db_main:get_connection(),
    %% 初始化user表
    UserData = user_table_init(Conn, UserID),
    % io:format("role_id:~p~n",[UserID]),

    %% 初始化user_info 表
    UserInfoData = user_Info_table_Init(Conn, UserID),
    % io:format("role_id:~p~n",[UserID]),

    %% 返回连接到池中
    db_main:return_connection(Conn),
    % io:format("role_id:~p~n",[UserID]),

    io:format("[--------DB Init Success------------]~n"),
    UserDbData = #db_user_param{
        user_tab = UserData,
        user_info_tab = UserInfoData
    },
    UserDbData
.

%% USER 表初始化
user_table_init(Conn, UserID) ->
    UserSql = lists:concat(["select * from user where id = ", UserID]),
    % io:format("[Sql:~p]~n",[UserSql]),
    {_, [UserData]} = connection:execute_query(Conn, UserSql),
    io:format("[user table init succ size:~p]~n",[erlang:length(UserData)]),
    UserTable = #user_tab{
        id = lists:nth(1, UserData)
        ,plat_name = lists:nth(2, UserData)
        ,user_phome = lists:nth(3, UserData)
        ,user_name = lists:nth(4, UserData)
        ,sex = lists:nth(5, UserData)
        ,headpicture = lists:nth(6, UserData)
        ,professional = lists:nth(7, UserData)
        ,scene_id = lists:nth(8, UserData)
        ,scene_key = lists:nth(9, UserData)
        ,scene_x = lists:nth(10, UserData)
        ,scene_y = lists:nth(11, UserData)
        ,last_scene_id = lists:nth(12, UserData)
        ,last_scene_x = lists:nth(13, UserData)
        ,last_scene_y = lists:nth(14, UserData)
        ,create_itme = lists:nth(15, UserData)
        ,last_login_time = lists:nth(16, UserData)
        ,forbid_time = lists:nth(17, UserData)
        ,imei_id = lists:nth(18, UserData)
        ,imsi_id = lists:nth(19, UserData)
        ,plat_type = lists:nth(20, UserData)
        ,channel_id = lists:nth(21, UserData)
        ,application_id = lists:nth(22, UserData)
        ,scene_width = lists:nth(23, UserData)
        ,scene_height = lists:nth(24, UserData)
        ,system_type = lists:nth(25, UserData)
        ,phome_model = lists:nth(26, UserData)
        ,network_type = lists:nth(27, UserData)
        ,package_size = lists:nth(28, UserData)
        ,imei_id_1 = lists:nth(29, UserData)
        ,imei_id_2 = lists:nth(30, UserData)
        ,imei_id_3 = lists:nth(31, UserData)
        ,imei_id_4 = lists:nth(32, UserData)
        ,package_name = lists:nth(33, UserData)
        ,gx = lists:nth(34, UserData)
        ,gy = lists:nth(35, UserData)
        ,adplat_type = lists:nth(36, UserData)
    },
    UserTable
.

%% user_Info 表保存
user_Info_table_Init(Conn, UserID) ->
    UserInfoSql = lists:concat(["select * from user_info where user_id = ", UserID]),
    {_, [UserInfoData]} = connection:execute_query(Conn, UserInfoSql),
    io:format("[user_info table init succ size:~p]~n",[erlang:length(UserInfoData)]),
    RoleTab = #user_info_tab{
        id                 = lists:nth(1, UserInfoData)
        ,user_id           = lists:nth(2, UserInfoData)
        ,role_level        = lists:nth(3, UserInfoData)
        ,exp               = lists:nth(4, UserInfoData)
        ,coin              = lists:nth(5, UserInfoData)
        ,gold              = lists:nth(6, UserInfoData)
        ,vip_level         = lists:nth(7, UserInfoData)
        ,task_gold         = lists:nth(8, UserInfoData)
        ,story_id          = lists:nth(9, UserInfoData)
        ,speed             = lists:nth(10, UserInfoData)
        ,silver            = lists:nth(11, UserInfoData)
        ,online_time_count = lists:nth(12, UserInfoData)
        ,last_quit_time    = lists:nth(13, UserInfoData)
        ,last_save_time    = lists:nth(14, UserInfoData)
        ,is_online         = lists:nth(15, UserInfoData)
        ,xinghun           = lists:nth(16, UserInfoData)
        ,lingli            = lists:nth(17, UserInfoData)
        ,jiuli             = lists:nth(18, UserInfoData)
        ,battle_time       = lists:nth(19, UserInfoData)
        ,next_zero_time    = lists:nth(20, UserInfoData)
        ,mute_time         = lists:nth(21, UserInfoData)
        ,privilege_time    = lists:nth(22, UserInfoData)
        ,score             = lists:nth(23, UserInfoData)
        ,daily_silver      = lists:nth(24, UserInfoData)
        ,lotter_num        = lists:nth(25, UserInfoData)
        ,pangu             = lists:nth(26, UserInfoData)
        ,vip_time          = lists:nth(27, UserInfoData)
    },
    % RoleTab = list_to_tuple([user_info_tab | UserInfoData]),
    RoleTab
.


