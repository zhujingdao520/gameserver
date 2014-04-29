
-module(role_transform).
-compile([export_all]).

-include("role.hrl").
-include("map.hrl").
-include("common.hrl").

-spec to(atom(), #role{}) -> #map_role{}.
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

%% 匹配失败
to(Match, _Role) ->
    ?INFO("[role_transform:to error][not_match:~p]",[Match])
.


