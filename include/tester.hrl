%%----------------------------------------------------
%% 测试器相关数据结构
%% @author yeahoo2000@gmail.com
%% @end
%%----------------------------------------------------
-ifdef(dbg_tester).
%% 输出调试信息
-define(T_DBG(Msg), logger:debug(Msg, [], ?MODULE, ?LINE)).
-define(T_DBG(F, A), logger:debug(F, A, ?MODULE, ?LINE)).
-else.
%% 停止输出调试信息
-define(T_DBG(Msg), ok).
-define(T_DBG(F, A), ok).
-endif.

-record(tester, {
        % 角色ID
        id = {1, <<>>, 1}       :: {pos_integer(), binary(), non_neg_integer()}
        % 帐号名
        ,account = <<>>         :: binary()
        % 平台标识
        ,platform_id = 1        :: pos_integer()
        % 区号
        ,zone_id = 1            :: pos_integer()
        % 角色名
        ,name = <<>>            :: binary()
        % 职业
        ,classes = 0            :: 0..4
        % 等级
        ,lev = 1                :: pos_integer()
        % VIP级别
        ,vip_lev = 0            :: non_neg_integer()

        % 进程ID
        ,pid = 0
        ,socket
        ,connect_time
        ,read_head = false      % 标识正在读取数据包头

        ,x = 0                  % 当前X坐标
        ,y = 0                  % 当前Y坐标
    }
).
