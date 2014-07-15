
-module(role_transform).
-compile([export_all]).

-include("role.hrl").
-include("map.hrl").
-include("common.hrl").
-include("db_table.hrl").

% -spec to(atom(), #role{}) -> #map_role{}.
to(map_role, Role) ->
    MapRole = #map_role{
        pid = Role#role.pid
        ,rid = Role#role.user_id
        ,platform_id = env:get_cnf(platform)
        ,zone_id = env:get_cnf(zone_id)
        ,name = Role#role.name
        ,conn_pid = Role#role.link#link.pid
        ,map = 0
        ,speed = 1
        ,x = Role#role.scene#pos.scene_id
        ,y = Role#role.scene#pos.scene_y
        ,gx = 0
        ,gy = 0
        ,lev = Role#role.level
        ,sex = Role#role.sex
        ,classes = Role#role.job
        ,hp = 1
        ,hp_max = 1
        ,mp = 1
        ,mp_max = 1
        },
    {ok, MapRole}
;
to(db, UserDBData) ->
    %% 玩家基本数据
    UserTab = UserDBData#db_user_param.user_tab,
    UserInfoTab = UserDBData#db_user_param.user_info_tab,
    Role = #role{
        user_id = UserTab#user_tab.id
        ,name = UserTab#user_tab.user_name
        % ,level = UserInfoTab#user_info_tab.role_level
        ,exp = UserInfoTab#user_info_tab.exp
        ,job = UserTab#user_tab.professional
        ,sex = UserTab#user_tab.sex
        ,coin = UserInfoTab#user_info_tab.coin
        ,gold = UserInfoTab#user_info_tab.gold
        ,vip_level = UserInfoTab#user_info_tab.vip_level
        ,scene = #pos{
            scene_id = UserTab#user_tab.scene_id
            ,scene_key = UserTab#user_tab.scene_key
            ,scene_x = UserTab#user_tab.scene_x
            ,scene_y = UserTab#user_tab.scene_y
            ,last = #pos_history{
                scene_id        = UserTab#user_tab.last_scene_id
                ,scene_x        = UserTab#user_tab.last_scene_x
                ,scene_y        = UserTab#user_tab.last_scene_y
                }
            }
        ,create_itme = UserTab#user_tab.create_itme
    },
    {ok, Role};

%% 匹配失败
to(Match, _Role) ->
    ?INFO("[role_transform:to error][not_match:~p]",[Match])
.


