
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
    ,user_id =0         ::integer()
    ,name = <<>>        ::binary()
    ,level = 1          ::integer()
    ,exp = 0            ::integer()
    ,job = 0            ::integer()
    ,sex = 0            ::integer()
    ,coin = 0           ::integer()
    ,gold = 0           ::integer()
    ,vip_level = 0      ::integer()
    ,scene              ::#pos{}
    ,platform = 0       ::integer()
    ,account = <<>>     ::binary()
    ,zone_id = 0        ::integer()
    ,create_itme = 0    ::integer()
    ,status = 0         ::integer()
    ,speed = 0          ::integer()
    ,skill_data         ::tuple()
    ,equip_data         ::tuple()
    ,knapsact           ::tuple()
    ,link               ::#link{}
    ,attr               ::#attr{}
}).

