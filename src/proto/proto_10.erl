%%----------------------------------------------------
%% 客户端连接验证模块
%% 该文件由程序生成，不要手动修改
%%----------------------------------------------------
-module(proto_10).
-export([pack/3, unpack/3]).

-include("map.hrl").

%%----------------------------------------------------
%% @doc 打包命令
%%----------------------------------------------------
-spec pack(srv | cli, non_neg_integer(), tuple()) ->
    {ok, binary()} | {error, {unknown_pack_command, non_neg_integer()}}.

%% -----------------------------------------------------------------------------
%% 打包
%% -----------------------------------------------------------------------------
%% 推送九宫玩家列表(一包太大后面可能要优化)
pack(srv, 1016, {V1_role_list}) ->
    Data = <<
        (length(V1_role_list)):16, (list_to_binary([<<
            V2_rid:32,
            V2_platform_id:16,
            V2_zone_id:16,
            (byte_size(V2_name) + 1):16, V2_name/binary, 0,
            V2_speed:8,
            V2_x:16,
            V2_y:16,
            V2_classes:8,
            V2_lev:8,
            V2_status:8,
            V2_action:8,
            V2_ride:8
        >> || #map_role{rid = V2_rid, platform_id = V2_platform_id, zone_id = V2_zone_id,
            name = V2_name, speed = V2_speed, x = V2_x, y = V2_y, classes = V2_classes,
            lev = V2_lev, status = V2_status, action = V2_action, ride = V2_ride} <- V1_role_list]))/binary
    >>,
    {ok, protocol:pack(1016, Data)};


%% 推送玩家地图信息
pack(srv, 1013, #map_role{rid = V1_rid, platform_id = V1_platform_id, zone_id = V1_zone_id
    , name = V1_name, speed = V1_speed, dir = V1_dir, x = V1_x, y = V1_y, classes = V1_classes
    , lev = V1_lev, status = V1_status, action = V1_action, ride = V1_ride}) ->
    Data = <<
        V1_rid:32,
        V1_platform_id:16,
        V1_zone_id:16,
        (byte_size(V1_name) + 1):16, V1_name/binary, 0,
        V1_speed:8,
        V1_dir:8,
        V1_x:16,
        V1_y:16,
        V1_classes:8,
        V1_lev:8,
        V1_status:8,
        V1_action:8,
        V1_ride:8
    >>,
    {ok, protocol:pack(1013, Data)};

%% 推送玩家离开场景
pack(srv, 1014, {V1_rid, V1_platform_id, V1_zone_id}) ->
    Data = <<
        V1_rid:32,
        V1_platform_id:16,
        V1_zone_id:16
    >>,
    {ok, protocol:pack(1014, Data)};

%% 推送进入场景
pack(srv, 1020, {V1_base_id, V1_x, V1_y}) ->
    Data = <<
        V1_base_id:32,
        V1_x:16,
        V1_y:16
    >>,
    {ok, protocol:pack(1020, Data)};
pack(cli, 1030, {V1_battle_id, V1_id, V1_code}) ->
    Data = <<
        V1_battle_id:32,
        V1_id:32,
        V1_code:16
    >>,
    {ok, protocol:pack(1030, Data)};

%% 请求角色场景信息
pack(cli, 1031, {Result}) ->
    {ok, protocol:pack(1031, <<Result:16>>)};
pack(srv, 1031, {V1_role_id, V1_platform_id, V1_zone_id, V1_role_name, V1_role_level, V1_classes, V1_vip_level, V1_scene_id, V1_scene_x, V1_scene_y, V1_coin, V1_gold, V1_story_id, V1_speed, V1_gold_vip}) ->
    Data = <<
        V1_role_id:32/signed,
        V1_platform_id:16,
        V1_zone_id:16,
        (byte_size(V1_role_name) + 1):16, V1_role_name/binary, 0,
        V1_role_level:32/signed,
        V1_classes:16/signed,
        V1_vip_level:16/signed,
        V1_scene_id:16/signed,
        V1_scene_x:16/signed,
        V1_scene_y:16/signed,
        V1_coin:32/signed,
        V1_gold:32/signed,
        V1_story_id:16/signed,
        V1_speed:16/signed,
        V1_gold_vip:32/signed
    >>,
    {ok, protocol:pack(1031, Data)};
pack(cli, 1032, {V1_x, V1_y, V1_dir}) ->
    Data = <<
        V1_x:16,
        V1_y:16,
        V1_dir:8
    >>,
    {ok, protocol:pack(1032, Data)};

pack(srv, 1032, {V1_rid, V1_platform_id, V1_zone_id, V1_dir, V1_x, V1_y, V1_dx, V1_dy}) ->
    Data = <<
        V1_rid:32,
        V1_platform_id:16,
        V1_zone_id:16,
        V1_dir:8,
        V1_x:16,
        V1_y:16,
        V1_dx:16,
        V1_dy:16
    >>,
    {ok, protocol:pack(1032, Data)};
pack(_Type, Code, _Data) ->
    {error, {unknown_pack_command, Code}}.

%%----------------------------------------------------
%% @doc 解包命令
%%----------------------------------------------------
-spec unpack(srv | cli, non_neg_integer(), binary()) ->
    {ok, tuple()} | {error, {unknown_unpack_command, non_neg_integer()}}.
%% 客户端收到九宫玩家信息
unpack(cli, 1016, _B1) ->
    {V1_role_list, _B15} = protocol:array(_B1, fun(_B2) ->
        {V2_rid, _B3} = protocol:uint32(_B2),
        {V2_platform_id, _B4} = protocol:uint16(_B3),
        {V2_zone_id, _B5} = protocol:uint16(_B4),
        {V2_name, _B6} = protocol:string(_B5),
        {V2_speed, _B7} = protocol:uint8(_B6),
        {V2_x, _B8} = protocol:uint16(_B7),
        {V2_y, _B9} = protocol:uint16(_B8),
        {V2_classes, _B10} = protocol:uint8(_B9),
        {V2_lev, _B11} = protocol:uint8(_B10),
        {V2_status, _B12} = protocol:uint8(_B11),
        {V2_action, _B13} = protocol:uint8(_B12),
        {V2_ride, _B14} = protocol:uint8(_B13),
        {{V2_rid, V2_platform_id, V2_zone_id, V2_name, V2_speed, V2_x, V2_y
            , V2_classes, V2_lev, V2_status, V2_action, V2_ride}, _B14}
    end),
    {ok, {V1_role_list}};

%% 客户端收到一个玩家在地图信息
unpack(cli, 1013, _B1) ->
    {V1_rid, _B2} = protocol:uint32(_B1),
    {V1_platform_id, _B3} = protocol:uint16(_B2),
    {V1_zone_id, _B4} = protocol:uint16(_B3),
    {V1_name, _B5} = protocol:string(_B4),
    {V1_speed, _B6} = protocol:uint8(_B5),
    {V1_dir, _B7} = protocol:uint8(_B6),
    {V1_x, _B8} = protocol:uint16(_B7),
    {V1_y, _B9} = protocol:uint16(_B8),
    {V1_classes, _B10} = protocol:uint8(_B9),
    {V1_lev, _B11} = protocol:uint8(_B10),
    {V1_status, _B12} = protocol:uint8(_B11),
    {V1_action, _B13} = protocol:uint8(_B12),
    {V1_ride, _B14} = protocol:uint8(_B13),
    {ok, {V1_rid, V1_platform_id, V1_zone_id, V1_name, V1_speed, V1_dir, V1_x
        , V1_y, V1_classes, V1_lev, V1_status, V1_action, V1_ride}};

%% 客户端收到玩家离开场景
unpack(cli, 1014, _B1) ->
    {V1_rid, _B2} = protocol:uint32(_B1),
    {V1_platform_id, _B3} = protocol:uint16(_B2),
    {V1_zone_id, _B4} = protocol:uint16(_B3),
    {ok, {V1_rid, V1_platform_id, V1_zone_id}};

%% 客户端收到玩家进入场景
unpack(srv, 1030, _B1) ->
    {V1_battle_id, _B2} = protocol:uint32(_B1),
    {V1_id, _B3} = protocol:uint32(_B2),
    {V1_code, _B4} = protocol:uint16(_B3),
    {ok, {V1_battle_id, V1_id, V1_code}};
unpack(cli, 1030, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {ok, {V1_result}};

%% 请求角色场景信息
unpack(srv, 1031, _B1) ->
    {Result, _B2} = protocol:uint16(_B1),
    {ok, {Result}};
unpack(cli, 1031, _B1) ->
    {V1_role_id, _B2} = protocol:int32(_B1),
    {V1_platform_id, _B3} = protocol:uint16(_B2),
    {V1_zone_id, _B4} = protocol:uint16(_B3),
    {V1_role_name, _B5} = protocol:string(_B4),
    {V1_role_level, _B6} = protocol:int32(_B5),
    {V1_classes, _B7} = protocol:int16(_B6),
    {V1_vip_level, _B8} = protocol:int16(_B7),
    {V1_scene_id, _B9} = protocol:int16(_B8),
    {V1_scene_x, _B10} = protocol:int16(_B9),
    {V1_scene_y, _B11} = protocol:int16(_B10),
    {V1_coin, _B12} = protocol:int32(_B11),
    {V1_gold, _B13} = protocol:int32(_B12),
    {V1_story_id, _B14} = protocol:int16(_B13),
    {V1_speed, _B15} = protocol:int16(_B14),
    {V1_gold_vip, _B16} = protocol:int32(_B15),
    {ok, {V1_role_id, V1_platform_id, V1_zone_id, V1_role_name
        , V1_role_level, V1_classes, V1_vip_level, V1_scene_id
        , V1_scene_x, V1_scene_y, V1_coin, V1_gold, V1_story_id
        , V1_speed, V1_gold_vip}};
unpack(srv, 1032, _B1) ->
    {V1_x, _B2} = protocol:uint16(_B1),
    {V1_y, _B3} = protocol:uint16(_B2),
    {V1_dir, _B4} = protocol:uint8(_B3),
    {ok, {V1_x, V1_y, V1_dir}};

unpack(cli, 1032, _B1) ->
    {V1_rid, _B2} = protocol:uint32(_B1),
    {V1_platform_id, _B3} = protocol:uint16(_B2),
    {V1_zone_id, _B4} = protocol:uint16(_B3),
    {V1_dir, _B5} = protocol:uint8(_B4),
    {V1_x, _B6} = protocol:uint16(_B5),
    {V1_y, _B7} = protocol:uint16(_B6),
    {V1_dx, _B8} = protocol:uint16(_B7),
    {V1_dy, _B9} = protocol:uint16(_B8),
    {ok, {V1_rid, V1_platform_id, V1_zone_id, V1_dir, V1_x, V1_y, V1_dx, V1_dy}};
unpack(cli, 1020, _B1) ->
    {V1_base_id, _B2} = protocol:uint32(_B1),
    {V1_x, _B3} = protocol:uint16(_B2),
    {V1_y, _B4} = protocol:uint16(_B3),
    {ok, {V1_base_id, V1_x, V1_y}};
unpack(_Type, Code, _Data) ->
    {error, {unknown_unpack_command, Code}}.





