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

pack(cli, 1010, {V1_account, V1_type, V1_platform_id, V1_zone_id, V1_ts, V1_ticket, V1_anti_wallow}) ->
    Data = <<
        (byte_size(V1_account) + 1):16, V1_account/binary, 0,
        V1_type:8/signed,
        V1_platform_id:16,
        V1_zone_id:16,
        V1_ts:32,
        (byte_size(V1_ticket) + 1):16, V1_ticket/binary, 0,
        V1_anti_wallow:8/signed
    >>,
    {ok, protocol:pack(1010, Data)};

pack(srv, 1010, {V1_result}) ->
    Data = <<
        V1_result:16/signed
    >>,
    {ok, protocol:pack(1010, Data)};

pack(cli, 1044, {}) ->
    {ok, protocol:pack(1044, <<>>)};

pack(srv, 1044, {V1_time}) ->
    Data = <<
        V1_time:32
    >>,
    {ok, protocol:pack(1044, Data)};

pack(cli, 1099, {V1_time}) ->
    Data = <<
        V1_time:32
    >>,
    {ok, protocol:pack(1099, Data)};

pack(srv, 1099, {V1_time}) ->
    Data = <<
        V1_time:32
    >>,
    {ok, protocol:pack(1099, Data)};
%% -----------------------------------------------------------------------------
%% 打包
%% -----------------------------------------------------------------------------

%% 推送九宫玩家列表(一包太大后面可能要优化)
pack(srv, 2116, {V1_role_list}) ->
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
    {ok, protocol:pack(2116, Data)};


%% 推送玩家地图信息
pack(srv, 2113, #map_role{rid = V1_rid, platform_id = V1_platform_id, zone_id = V1_zone_id
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
    {ok, protocol:pack(2113, Data)};
pack(_Type, Code, _Data) ->
    {error, {unknown_pack_command, Code}}.

%%----------------------------------------------------
%% @doc 解包命令
%%----------------------------------------------------
-spec unpack(srv | cli, non_neg_integer(), binary()) ->
    {ok, tuple()} | {error, {unknown_unpack_command, non_neg_integer()}}.

unpack(srv, 1010, _B1) ->
    {V1_account, _B2} = protocol:string(_B1),
    {V1_type, _B3} = protocol:int8(_B2),
    {V1_platform_id, _B4} = protocol:uint16(_B3),
    {V1_zone_id, _B5} = protocol:uint16(_B4),
    {V1_ts, _B6} = protocol:uint32(_B5),
    {V1_ticket, _B7} = protocol:string(_B6),
    {V1_anti_wallow, _B8} = protocol:int8(_B7),
    {ok, {V1_account, V1_type, V1_platform_id, V1_zone_id, V1_ts, V1_ticket, V1_anti_wallow}};

unpack(cli, 1010, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {ok, {V1_result}};

unpack(srv, 1044, _B1) ->
    {ok, {}};

unpack(cli, 1044, _B1) ->
    {V1_time, _B2} = protocol:uint32(_B1),
    {ok, {V1_time}};

unpack(srv, 1099, _B1) ->
    {V1_time, _B2} = protocol:uint32(_B1),
    {ok, {V1_time}};

unpack(cli, 1099, _B1) ->
    {V1_time, _B2} = protocol:uint32(_B1),
    {ok, {V1_time}};

%% -----------------------------------------------------------------------------
%% 解包
%% -----------------------------------------------------------------------------
%% 客户端收到九宫玩家信息
unpack(cli, 2116, _B1) ->
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
unpack(cli, 2113, _B1) ->
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
unpack(_Type, Code, _Data) ->
    {error, {unknown_unpack_command, Code}}.





