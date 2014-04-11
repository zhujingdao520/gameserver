%%----------------------------------------------------
%% 协议处理映射表
%% (当服务端成功解包消息时，将解包后的数据交由此表中对应的模块处理)
%% @author yeahoo2000@gmail.com
%% @end
%----------------------------------------------------
-module(mapping).
-export([module/2]).

%% @doc 模块映射信息
%% <ul>
%% <li>Type: 模块类型game_server | monitor | tester</li>
%% <li>Cmd: 命令号，约定有效范围:20~65500，模块号有效范围:1~655</li>
%% <li>NeedAuth: 调用时是否需要先通过验证</li>
%% <li>Caller: 指定调用发起者</li>
%% <li>Parser: 协议解析模块</li>
%% <li>ModName: 模块名</li>
%% <li>Reason: 返回出错的模块编号</li>
%% </ul>
-spec module(Type, Cmd) -> {ok, NeedAuth, Caller, Parser, ModName} |
                           {ok, Parser, ModName} |
                           {error, Reason} when
    Type        :: game_server | monitor | tester,
    Cmd         :: pos_integer(),
    NeedAuth    :: boolean(),
    Caller      :: connector | object,
    Parser      :: atom(),
    ModName     :: atom(),
    Reason      :: term().
module(Type, Cmd) -> code(Type, trunc(Cmd / 100)).

%% 游戏服务器协议映射
code(game_server, 10) -> {ok, false, connector, proto_10, client_rpc_open};
code(game_server, 11) -> {ok, true,  connector, proto_11, client_rpc};
code(game_server, 98) -> {ok, true,  object,    proto_98, misc_rpc};
code(game_server, 99) -> {ok, true,  object,    proto_99, misc_rpc};
code(game_server, 20) -> {ok, true,  object,    proto_20, role_rpc};
code(game_server, 21) -> {ok, true,  object,    proto_21, map_rpc};
code(game_server, 22) -> {ok, true,  object,    proto_22, quest_rpc};
code(game_server, 23) -> {ok, true,  object,    proto_23, item_rpc};
code(game_server, 24) -> {ok, true,  object,    proto_24, chat_rpc};
code(game_server, 25) -> {ok, true,  object,    proto_25, blacksmith_rpc};
code(game_server, 26) -> {ok, true,  object,    proto_26, reward_rpc};
code(game_server, 27) -> {ok, true,  object,    proto_27, combat_rpc};
code(game_server, 28) -> {ok, true,  object,    proto_28, sns_rpc};
code(game_server, 29) -> {ok, true,  object,    proto_29, guild_rpc};
code(game_server, 30) -> {ok, true,  object,    proto_30, rank_rpc};
code(game_server, 31) -> {ok, true,  object,    proto_31, dungeon_rpc};
code(game_server, 32) -> {ok, true,  object,    proto_32, hall_rpc};
code(game_server, 34) -> {ok, true,  object,    proto_34, honor_rpc};
code(game_server, 38) -> {ok, true,  object,    proto_38, plot_rpc};
code(game_server, 39) -> {ok, true,  object,    proto_39, store_rpc};
code(game_server, 40) -> {ok, true,  object,    proto_40, shop_rpc};
code(game_server, 41) -> {ok, true,  object,    proto_41, reward_task_rpc};
code(game_server, 42) -> {ok, true,  object,    proto_42, boss_rpc};
code(game_server, 46) -> {ok, true,  object,    proto_46, pet_rpc};

%% 测试器协议映射
code(tester, 10) -> {ok, proto_10, test_client_rpc_open};
code(tester, 11) -> {ok, proto_11, test_client_rpc};
code(tester, 99) -> {ok, proto_99, test_misc_rpc};
code(tester, 98) -> {ok, proto_98, test_misc_rpc};
code(tester, 20) -> {ok, proto_20, test_role_rpc};
code(tester, 21) -> {ok, proto_21, test_map_rpc};
code(tester, 22) -> {ok, proto_22, test_quest_rpc};
code(tester, 23) -> {ok, proto_23, test_item_rpc};
code(tester, 24) -> {ok, proto_24, test_chat_rpc};
code(tester, 25) -> {ok, proto_25, test_blacksmith_rpc};
code(tester, 26) -> {ok, proto_26, test_reward_rpc};
code(tester, 27) -> {ok, proto_27, test_combat_rpc};
code(tester, 28) -> {ok, proto_28, test_sns_rpc};
code(tester, 29) -> {ok, proto_29, test_guild_rpc};
code(tester, 30) -> {ok, proto_30, test_rank_rpc};
code(tester, 31) -> {ok, proto_31, test_dungeon_rpc};
code(tester, 32) -> {ok, proto_32, test_hall_rpc};
code(tester, 34) -> {ok, proto_34, test_honor_rpc};
code(tester, 38) -> {ok, proto_38, test_plot_rpc};
code(tester, 39) -> {ok, proto_39, test_store_rpc};
code(tester, 40) -> {ok, proto_40, test_shop_rpc};
code(tester, 41) -> {ok, proto_41, test_reward_task_rpc};
code(tester, 42) -> {ok, proto_42, test_boss_rpc};
code(tester, 46) -> {ok, proto_46, test_pet_rpc};

%% 未知编号
code(Type, Code) -> {error, {unknow_mapping, Type, Code}}.
