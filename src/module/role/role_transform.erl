
-module(role_transform).
-compile([export_all]).

-include("role.hrl").
-include("map.hrl").


-spec transform_map_role(#role{}) -> #map_role{}.
transform_map_role(Role) ->
    MapRole = #map_role{
        pid = Role#role.pid
        ,rid = Role#role.user_id
        ,platform_id = env:get(platform)
        ,zone_id = env:get(zone_id)
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
.


