
-module(client_rpc).
-export([handle/3]).

% -include("pos.hrl").
-include("role.hrl").
-include("conn.hrl").
-include("common.hrl").

%% 创建角色
handle(1001, Param, State) ->
    Name = <<"2555">>,
    Classess = 1,
    case role_create:create(Name, Classess, State#conn.socket) of
        {ok} ->
            {ok, State};
        {error, _Reason} ->
            {ok, State}
    end;

%% 请求登陆游戏
handle(1003, {UserID, Sever_id, RoleName, _ImeiNumber}, State = #conn{
    socket = Socket, conn_pid = Pid, port = Port, address = Address}) ->
    Account = <<"37wan">>,

    Link = #link{
        socket = Socket
        ,pid = Pid
        ,ip = Address
        ,port = Port
    },

    % io:format("=================================~n"),

    %% 判断玩家是否登陆顶号逻辑暂时没有写
    io:format("UserID:~p,Sever_id:~p ~n",[UserID, Sever_id]),

    %% 创建角色进程
    {ok, Pid1} = role:create([UserID, Account, Sever_id, Link]),

    NewState = State#conn{object = role, obj_pid = Pid1, account = Account
                , platform_id = 1, zone_id = Sever_id},

    {sync, NewState};

%% -----------------------------------------------------------------------------
%% 逻辑层回调
%% -----------------------------------------------------------------------------
%% 请求进入场景
handle(1201, Param, Role = #role{scene = #pos{scene_id = MapID, scene_x = X
        , scene_y = Y, last = Last} ,link = #link{socket = Socket}}) ->
    Msg = protocol:hex2bin(<<"02000000000001004b000d0000000000">>),
    sys_connect:sends(Socket, 1251, Msg),
    io:format("send succ:~p ~n",[1251]),
    {ok, Role};
    %% 进入当前场景
    % Ret = case map_mgr:role_enter(MapID, X, Y, Role) of
    %     {ok, NewRole} -> {ok, NewRole};
    %     _ ->
    %         {MapID2, X2, Y2} = ?MAIN_CITY,
    %         case Last of
    %             %% 进入上个场景
    %             #pos_history{scene_id = MapID1, scene_x = X1, scene_y = Y1} ->
    %                 case map_mgr:role_enter(MapID1, X1, Y1, Role) of
    %                     {ok, NewRole1} -> {ok, NewRole1};
    %                     _ -> %% 进入新手村
    %                       map_mgr:role_enter(MapID2, X2, Y2, Role)
    %                 end;
    %             _ ->
    %                 map_mgr:role_enter(MapID2, X2, Y2, Role)
    %         end
    % end,
    % case Ret of
    %     {ok, R} -> {ok, R};
    %     {error, _Reason} ->
    %         ?INFO("[client_rp:handle EnterSceneFail][scene_id:~p x:~p y:~p]",[MapID, X, Y]),
    %         {ok, Role}
    % end;

%% 请求玩家场景数据
handle(1031, _Param, Role = #role{user_id = RoleID, platform = Plat_id, zone_id = Zone_id
        , name = Name, level = Level, job= Classess, vip_level = VipLevel, coin = Coin
        , gold = Gold, speed = Speed, pid = Pid
        , scene = #pos{scene_id = SceneID, scene_x = X, scene_y = Y}}) ->
    Param1 = {RoleID, Plat_id, Zone_id, Name, Level, Classess
            , VipLevel, SceneID, X, Y, Coin, Gold, 0, Speed, 0},
    role:send(Pid, 1031, Param1),
    io:format("send succ:~p ~n",[1031]),
    {ok, Role};
handle(1032, {X, Y, _Dir}, Role) ->
    %% 后面进行阻挡点的判断
    map:role_move(Role, X, Y),
    {ok, Role};

%% "请求玩家信息"
handle(2001, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg = protocol:hex2bin(<<"02340000030003010500000200000046005000701700000000000084030000000000000000000000000000000000000000000000000000010001000000000a00e5ae98e59bbde4bca000">>),
    sys_connect:sends(Socket, 2051, Msg),
    io:format("send succ:~p ~n",[2051]),
    {ok, Role};
%% "请求玩家面板信息"
handle(2002, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg = protocol:hex2bin(<<"010002340000030001030100050096050000000000000c0000004c020000110100001100000011000000110000002100000011000000420000001401000000000000110000001100000021000000000000006c0700000000000000000a00e5ae98e59bbde4bca00001000002001f0000000100000000010000bf0000000100000000050000">>),
    sys_connect:sends(Socket, 2002, Msg),
    io:format("send succ:~p ~n",[2052]),
    {ok, Role};
%% "请求背包物品列表"
handle(3001, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0100da0b000001000000000000000100010000000000">>),
    sys_connect:sends(Socket, 3051, Msg),
    io:format("send succ:~p ~n",[3051]),
    {ok, Role};
%% "请求获取技能列表"
handle(3301, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"560b00000a00dd000000140400000000010019001400de00000014040000000001001e001400df000000140400000000010020001400c90000000b0200000000010056000a00e000000014040000000002002300140050001400ca0000000b0200000000010057000a00e100000014040000000002002200140026001400cb0000000b0200000000010058000a00e2000000140400000000010051001400cc0000000b0300000000010059000a00">>),
    sys_connect:sends(Socket, 3351, Msg),
    io:format("send succ:~p ~n",[3351]),
    {ok, Role};
%% "请求任务列表"
handle(2201, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00000100010000006400000000000000">>),
    sys_connect:sends(Socket, 2251, Msg),
    io:format("send succ:~p ~n",[2251]),
    {ok, Role};
%% "请求坐骑信息"
handle(3401, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"05640000000001050102030405">>),
    sys_connect:sends(Socket, 3451, Msg),
    io:format("send succ:~p ~n",[3451]),
    {ok, Role};
%% "请求宝石列表"
handle(3602, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"000000000a007a176300841763008e17630098176300a2176300ac176300b6176300c0176300ca176300d4176300">>),
    sys_connect:sends(Socket, 3652, Msg),
    io:format("send succ:~p ~n",[3652]),
    {ok, Role};
%% "请求法宝数据"
handle(2401, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0100010000000000000003010001000200010003000100">>),
    sys_connect:sends(Socket, 2451, Msg),
    io:format("send succ:~p ~n",[2451]),
    {ok, Role};
%% "请求法宝特技数据"
handle(2409, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0101000100000000">>),
    sys_connect:sends(Socket, 2459, Msg),
    io:format("send succ:~p ~n",[2459]),
    {ok, Role};
%% "请求经脉数据"
handle(3502, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"09000000000000000000000000000000000000000000000000000000000000000000000000">>),
    sys_connect:sends(Socket, 3552, Msg),
    io:format("send succ:~p ~n",[3552]),
    {ok, Role};
%% "请求开启的新功能列表"
handle(9901, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0000">>),
      sys_connect:sends(Socket, 9951, Msg),
    io:format("send succ:~p ~n",[9951]),
    {ok, Role};
%% "请求悬赏任务列表"
handle(2205, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00000000000000">>),
      sys_connect:sends(Socket, 2205, Msg),
    io:format("send succ:~p ~n",[2255]),
    {ok, Role};
%% "请求好友列表"
handle(7001, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0000">>),
      sys_connect:sends(Socket, 7051, Msg),
    io:format("send succ:~p ~n",[7051]),
    {ok, Role};
%% "请求副本信息"
handle(3205, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00001c0100000003000300020000000300030003000000030003000400000003000300050000000300030006000000030003000700000003000300080000000300030009000000030003000a000000030003000b000000030003000c000000030003000d000000030003000e000000030003000f0000000300030010000000030003001100000003000300120000000300030013000000030003001400000003000300150000000300030016000000030003001700000003000300ee03000064006400f2030000c800c800ed03000002000200f103000002000200ec030000020002001c0100000000000200000000000300000000000400000000000500000000000600000000000700000000000800000000000900000000000a00000000000b00000000000c00000000000d00000000000e00000000000f0000000000100000000000110000000000120000000000130000000000140000000000150000000000160000000000170000000000ee0300000000f20300000000ed0300000000f10300000000ec0300000000">>),
  sys_connect:sends(Socket, 3255, Msg),
    io:format("send succ:~p ~n",[3255]),
    {ok, Role};
%% "请求打开每日必做"
handle(4701, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0a000001000001000001000001000001000001000001000001000001000001">>),
  sys_connect:sends(Socket, 4751, Msg),
    io:format("send succ:~p ~n",[4751]),
    {ok, Role};
%% "请求目标列表"
handle(4401, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"05010000000000000002000000000000000300000000000000040000000000000005000000d0b607001701000100000000000100020000000000010003000000000001000400000000000100050000000000020008000000000002000600000000000200070000000000020009000000000003000b000000000003000d000000000003000a000000000003000c000000000003000e0000000000040011000000000004000f00000000000400120000000000040013000000000004001000000000000500150000000000050016000000000005001400000000000500170000000000">>),
  sys_connect:sends(Socket, 4451, Msg),
    io:format("send succ:~p ~n",[4451]),
    {ok, Role};
%% "请求地图采集信息"
handle(2214, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00000000">>),
  sys_connect:sends(Socket, 2264, Msg),
    io:format("send succ:~p ~n",[2264]),
    {ok, Role};
%% "请求醉仙之术状态信息"
handle(4801, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"000000000000000000000000">>),
  sys_connect:sends(Socket, 4851, Msg),
    io:format("send succ:~p ~n",[4851]),
    {ok, Role};
%% "请求在线奖励剩余时间"
handle(3805, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0000000000">>),
  sys_connect:sends(Socket, 3855, Msg),
    io:format("send succ:~p ~n",[3855]),
    {ok, Role};
%% "请求竞技场领奖时间"
handle(7310, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"ffffffff">>),
  sys_connect:sends(Socket, 7360, Msg),
    io:format("send succ:~p ~n",[7360]),
    {ok, Role};
%% "请求客户端设置"
handle(9911, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"010000">>),
  sys_connect:sends(Socket, 9961, Msg),
    io:format("send succ:~p ~n",[9961]),
    {ok, Role};
%% "请求首充礼包信息"
handle(5002, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"000000000000">>),
  sys_connect:sends(Socket, 5052, Msg),
    io:format("send succ:~p ~n",[5052]),
    {ok, Role};
%% "请求客户端剧情列表"
handle(3902, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"010011270000">>),
  sys_connect:sends(Socket, 3952, Msg),
    io:format("send succ:~p ~n",[3952]),
    {ok, Role};
%% "请求重点推荐数据列表"
handle(3904, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0000">>),
  sys_connect:sends(Socket, 3954, Msg),
    io:format("send succ:~p ~n",[3954]),
    {ok, Role};
handle(5701, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00">>),
  sys_connect:sends(Socket, 5751, Msg),
    io:format("send succ:~p ~n",[5751]),
    {ok, Role};
handle(5801, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"010a0000010200000096000000010000">>),
  sys_connect:sends(Socket, 5851, Msg),
    io:format("send succ:~p ~n",[5851]),
    {ok, Role};
%% "请求世界活动信息"
handle(2024, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"000000000d09060230e596530c0a0240f396530b080250019753080302600f9753020102701d9753030203a0669653010103b0749653070303c08296530a0803d0909653040203e09e9653050203f0ac965306020300bb96530d0c0310c9965300">>),
  sys_connect:sends(Socket, 2074, Msg),
    io:format("send succ:~p ~n",[2074]),
    {ok, Role};
handle(4901, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0a00000000000000000000">>),
  sys_connect:sends(Socket, 4951, Msg),
    io:format("send succ:~p ~n",[4951]),
    {ok, Role};
%% "请求套装材料"
handle(3111, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00000000000000000000000000000000">>),
  sys_connect:sends(Socket, 3161, Msg),
    io:format("send succ:~p ~n",[3161]),
    {ok, Role};
handle(4506, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"0000000000">>),
  sys_connect:sends(Socket, 4556, Msg),
    io:format("send succ:~p ~n",[4556]),
    {ok, Role};
handle(2415, _Param, Role = #role{link = #link{socket = Socket}}) ->
    Msg =  protocol:hex2bin(<<"00">>),
  sys_connect:sends(Socket, 2465, Msg),
    io:format("send succ:~p ~n",[2465]),
    {ok, Role}
.


