
-module(db_logic).
-compile([export_all]).
-include("db_table.hrl").
-include("deps/db/include/client_records.hrl").

user_first_login(RoleTab) ->
    Conn = db_main:get_connection(),
    Sql = lists:concat(["insert into user value(NULL", ",'"
                    ,binary_to_list(RoleTab#user_tab.name), "',"
                    ,RoleTab#user_tab.job, ","
                    ,RoleTab#user_tab.sex, ",'"
                    ,RoleTab#user_tab.platform, "',"
                    ,RoleTab#user_tab.create_itme, ","
                    ,RoleTab#user_tab.scene_id, ","
                    ,RoleTab#user_tab.scene_key, ","
                    ,RoleTab#user_tab.scene_x, ","
                    ,RoleTab#user_tab.scene_y, ","
                    ,RoleTab#user_tab.last_scene_id, ","
                    ,RoleTab#user_tab.last_scene_key, ","
                    ,RoleTab#user_tab.last_scene_x, ","
                    ,RoleTab#user_tab.last_scene_y, ","
                    ,RoleTab#user_tab.level , ","
                    ,RoleTab#user_tab.exp , ","
                    ,RoleTab#user_tab.coin , ","
                    ,RoleTab#user_tab.gold , ","
                    ,RoleTab#user_tab.vip_level, ")"
                    ]),
    {_,[Ok]} = connection:execute_query(Conn, Sql),
    UserID = Ok#ok_packet.insert_id,
    % connection:transaction(Conn, F),
    db_main:return_connection(Conn),
    UserID
.

% user_save(Param) ->
%     % Conn = db_main:get_connection()


% .

user_init(UserID) ->
    Conn = db_main:get_connection(),
    Sql = lists:concat(["select * from user where id = ", UserID]),
    {_, [Ok]} = connection:execute_query(Conn, Sql),

    [ID, Name, Job, Sex, Platform, Create_itme, Scene_id,
     Scene_key, Scene_x, Scene_y, Last_scene_id, Last_scene_key,
     Last_scene_x, Last_scene_y, Level, Exp, Coin, Gold, VipLevel
    ] = Ok,

    RoleTab = #user_tab{
        user_id = ID
        ,name = Name
        ,job = Job
        ,sex = Sex
        ,platform = Platform
        ,create_itme = Create_itme
        ,scene_id = Scene_id
        ,scene_key = Scene_key
        ,scene_x = Scene_x
        ,scene_y = Scene_y
        ,last_scene_id = Last_scene_id
        ,last_scene_key = Last_scene_key
        ,last_scene_x = Last_scene_x
        ,last_scene_y = Last_scene_y
        ,level = Level
        ,exp = Exp
        ,coin = Coin
        ,gold = Gold
        ,vip_level= VipLevel
    },
    db_main:return_connection(Conn),
    RoleTab
.

% %% USER 表初始化
% user_table_init(Conn) ->

%     ok
% .

% %% USER 表保存
% user_table_save() ->

%     ok
% .


