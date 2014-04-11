%%----------------------------------------------------
%% 角色登录
%% 该文件由程序生成，不要手动修改
%%----------------------------------------------------
-module(proto_11).
-export([pack/3, unpack/3]).


%%----------------------------------------------------
%% @doc 打包命令
%%----------------------------------------------------
-spec pack(srv | cli, non_neg_integer(), tuple()) ->
    {ok, binary()} | {error, {unknown_pack_command, non_neg_integer()}}.

pack(cli, 1100, {}) ->
    {ok, protocol:pack(1100, <<>>)};

pack(srv, 1100, {V1_role_list}) ->
    Data = <<
        (length(V1_role_list)):16, (list_to_binary([<<
            V2_id:32,
            V2_platform_id:16,
            V2_zone_id:16,
            V2_status:8/signed,
            (byte_size(V2_name) + 1):16, V2_name/binary, 0,
            V2_lev:8,
            V2_classes:8/signed
        >> || {V2_id, V2_platform_id, V2_zone_id, V2_status, V2_name, V2_lev, V2_classes} <- V1_role_list]))/binary
    >>,
    {ok, protocol:pack(1100, Data)};

pack(cli, 1105, {V1_name, V1_classes}) ->
    Data = <<
        (byte_size(V1_name) + 1):16, V1_name/binary, 0,
        V1_classes:8/signed
    >>,
    {ok, protocol:pack(1105, Data)};

pack(srv, 1105, {V1_result}) ->
    Data = <<
        V1_result:16/signed
    >>,
    {ok, protocol:pack(1105, Data)};

pack(cli, 1120, {V1_id, V1_platform_id, V1_zone_id}) ->
    Data = <<
        V1_id:32,
        V1_platform_id:16,
        V1_zone_id:16
    >>,
    {ok, protocol:pack(1120, Data)};

pack(srv, 1120, {V1_result}) ->
    Data = <<
        V1_result:16/signed
    >>,
    {ok, protocol:pack(1120, Data)};

pack(_Type, Code, _Data) ->
    {error, {unknown_pack_command, Code}}.

%%----------------------------------------------------
%% @doc 解包命令
%%----------------------------------------------------
-spec unpack(srv | cli, non_neg_integer(), binary()) ->
    {ok, tuple()} | {error, {unknown_unpack_command, non_neg_integer()}}.

unpack(srv, 1100, _B1) ->
    {ok, {}};

unpack(cli, 1100, _B1) ->
    {V1_role_list, _B10} = protocol:array(_B1, fun(_B2) ->
        {V2_id, _B3} = protocol:uint32(_B2),
        {V2_platform_id, _B4} = protocol:uint16(_B3),
        {V2_zone_id, _B5} = protocol:uint16(_B4),
        {V2_status, _B6} = protocol:int8(_B5),
        {V2_name, _B7} = protocol:string(_B6),
        {V2_lev, _B8} = protocol:uint8(_B7),
        {V2_classes, _B9} = protocol:int8(_B8),
        {{V2_id, V2_platform_id, V2_zone_id, V2_status, V2_name, V2_lev, V2_classes}, _B9}
    end),
    {ok, {V1_role_list}};

unpack(srv, 1105, _B1) ->
    {V1_name, _B2} = protocol:string(_B1),
    {V1_classes, _B3} = protocol:int8(_B2),
    {ok, {V1_name, V1_classes}};

unpack(cli, 1105, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {ok, {V1_result}};

unpack(srv, 1120, _B1) ->
    {V1_id, _B2} = protocol:uint32(_B1),
    {V1_platform_id, _B3} = protocol:uint16(_B2),
    {V1_zone_id, _B4} = protocol:uint16(_B3),
    {ok, {V1_id, V1_platform_id, V1_zone_id}};

unpack(cli, 1120, _B1) ->
    {V1_result, _B2} = protocol:int16(_B1),
    {ok, {V1_result}};

unpack(_Type, Code, _Data) ->
    {error, {unknown_unpack_command, Code}}.
