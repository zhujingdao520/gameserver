
-include("pos.hrl").

%% 连接器
-record(link, {
    %% 套接字
    socket
    %% 连接器进程ID
    ,pid        ::pid()
    %% 客户端IP
    ,ip         ::tuple()
    %% 连接端口
    ,port       ::integer()
}).

%% 二级属性
-record(attr, {
    %% 怒气
    nuqi = 0    ::integer()
    %% 攻击
    ,atk = 0    ::integer()
    %% 防御
    ,def = 0    ::integer()
    %% 血
    ,hp  = 0    ::integer()
    %% 暴击
    ,bj  = 0    ::integer()
    %% 抗暴
    ,kb  = 0    ::integer()
    %% 格档
    ,gd  = 0    ::integer()
    %% 闪避
    ,sb  = 0    ::integer()
    %% 命中
    ,mz  = 0    ::integer()
    %% 穿透
    ,ct  = 0    ::integer()
}).

%% 玩家数据
-record(role, {
    pid
    ,user_id     = 0        ::integer()
    ,name        = <<>>     ::binary()
    %% 玩家手机标识
    ,user_phone  = <<>>     ::binary()
    %% 玩家账号
    ,account     = <<>>     ::binary()
    %% 主角头像
    ,headpicture = 0        ::integer()
    ,sex         = 0        ::integer()
    ,job         = 0        ::integer()
    ,level       = 1        ::integer()
    ,exp         = 0        ::integer()
    ,coin        = 0        ::integer()
    ,gold        = 0        ::integer()
    ,vip_level   = 0        ::integer()
    ,scene                  ::#pos{}
    ,platform    = 0        ::integer()
    ,zone_id     = 0        ::integer()
    ,create_itme = 0        ::integer()
    ,status      = 0        ::integer()
    ,speed       = 0        ::integer()
    ,skill_data             ::tuple()
    ,equip_data             ::tuple()
    ,knapsact               ::tuple()
    ,link                   ::#link{}
    ,attr                   ::#attr{}
}).




    % self.m_last_scene_id            = 0       -- 上一场景id
    % self.m_last_scene_x             = 0       -- 上一场景的x坐标
    % self.m_last_scene_y             = 0       -- 上一场景的y坐标
    % self.m_last_scene_key           = 0       -- 上一场景key
    % self.m_create_time              = 0       -- 创建角色时间
    % self.m_last_login_time          = 0       -- 玩家本次登录游戏的时间
    % self.m_story_id                 = 0       -- 玩家已完成的剧情id(暂时没用,转成列表保存)
    % self.m_silver                   = 0       -- 银币
    % self.m_online_time_count        = 0       -- 玩家在线时间累积，秒为单位
    % self.m_last_quit_time           = 0       -- 玩家上次退出时间
    % self.m_gold_history             = 0       -- 玩家的充值历史记录
    % self.m_login_time_of_this_scene = 0       -- 玩家进入当前场景的时间
    % self.m_is_online                = 0       -- 玩家是否在线，1是0否
    % self.m_next_save_time           = 0       -- 玩家下次定时保存时间
    % self.m_is_client_ready          = false   -- 客户端是否已加载完场景
    % self.m_battle_time              = 0       -- 战斗时间
    % self.m_xinghun                  = 0       -- 玩家拥有星魂
    % self.m_jiuli                    = 0       -- 玩家拥有酒力
    % self.m_lingli                   = 0       -- 玩家拥有灵力
    % self.m_next_zero_time           = 0       -- 下次零点后更新时间
    % self.m_mute_time                = 0       -- 禁言截止时间
    % self.m_call_msg_type            = 0       -- 上行消息的协议号
    % self.m_pk_protect_time          = 0       -- PK 胜利的保护时间(暂定8秒)
    % self.m_pk_mode                  = 1       -- PK 模式(PK_MODE 对象)
    % self.m_pk_state                 = 0       -- 玩家当前状态(STATE 对象)
    % self.m_action_state             = 1       -- 玩家当前动作(ACTION_STATE 对象)
    % self.m_last_fish_time           = 0       -- 上一次玩家的钓鱼时间
    % self.m_score                    = 0       -- 战场积分
    % self.m_daily_silver             = 0       -- 当日银币数量
    % self.m_package_name             = ''
    % self.m_gx                       = 0
    % self.m_gy                       = 0
    % self.m_lotter_num               = 0       -- 等级抽奖次数
    % self.m_pangu                    = 0       -- 盘古
    % self.m_vip_experience_time      = 0       -- VIP体验时间