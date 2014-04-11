%%----------------------------------------------------
%% 客户端连接验证模块
%% 该文件由程序生成，不要手动修改
%%----------------------------------------------------
-module(proto_10).
-export([pack/3, unpack/3]).


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

unpack(_Type, Code, _Data) ->
    {error, {unknown_unpack_command, Code}}.
