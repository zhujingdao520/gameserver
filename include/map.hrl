%%----------------------------------------------------
%% 地图相关数据结构定义
%% @author yeahoo2000@gmail.com
%%
%% * 地图与地图之间通过连接点相连，由地图编辑器中设置
%% * 连接点信息:{目标地图ID, X坐标, Y坐标, [条件列表]}
%% * 连接点可以被副本管理器等控制
%% * 角色进入地图有两种方式:1:访问连接点, 2:使用传送道具
%%----------------------------------------------------

%% 网格大小定义
-define(GRID_WIDTH, 600).
-define(GRID_HEIGHT, 340).

%% 区块格子大小定义
-define(TILE_WIDTH, 60).
-define(TILE_HEIGHT, 30).

-define(GX(X), util:floor(X / ?GRID_WIDTH)).  % 将X坐标转换成gx
-define(GY(Y), util:floor(Y / ?GRID_HEIGHT)). % 将X坐标转换成gy

-define(DX(X, W), if X =< 0 -> 0; X > W -> W; true -> X end). % 将目标X坐标限定在有效范围
-define(DY(Y, H), if Y =< 0 -> 0; Y > H -> H; true -> Y end). % 将目标Y坐标限定在有效范围

%% 地图在线信息
-record(map, {
        % 地图ID
        id = 1              :: pos_integer()
        % 平台标识
        ,platform_id = 1    :: pos_integer()
        % 区号
        ,zone_id = 1        :: pos_integer()
        % 地图基础ID
        ,base_id = 1        :: pos_integer()
        % 地图进程ID
        ,pid                :: undefined | pid()
        % 地图控制进程(处理地图上发生的事件)
        ,ctrl_pid           :: undefined | pid()
        % 网格进程pid
        ,grid_pid           :: undefined | pid()
        % 地图名称
        ,name = <<>>        :: binary()
        % 进入条件
        ,condition = []     :: list()
        % 进入地图中的玩家数
        ,num = 0            :: non_neg_integer()
        % 宽度
        ,width = 1          :: pos_integer()
        % 高度
        ,height = 1         :: pos_integer()
    }
).

%% 地图网格状态数据
-record(map_grid, {
        % 地图进程
        map_pid         :: undefined | pid()
        % 地图ID
        ,map_id = 1     :: pos_integer()
        % 地图BaseId
        ,base_id = 1    :: pos_integer()
        % 地图宽度
        ,width = 1      :: pos_integer()
        % 地图高度
        ,height = 1     :: pos_integer()
    }
).

%% 地图原始数据
-record(map_data, {
        % 地图ID
        id = 1              :: pos_integer()
        % 地图名称
        ,name = <<>>        :: binary()
        % 进入地图的默认条件
        ,condition = []     :: [tuple()]
        % [{X, Y} | ...] 复活点位置
        ,revive = []        :: [tuple()]
        % 地图宽度
        ,width = 1          :: pos_integer()
        % 地图长度
        ,height = 1         :: pos_integer()
    }
).


%% 地图中的角色信息
-record(map_role, {
        % 角色进程ID(在此用作主键)
        pid                 :: undefined | pid()
        % 角色ID
        ,rid = 0            :: non_neg_integer()
        % 平台标识
        ,platform_id = 1    :: pos_integer()
        % 平台标识
        ,zone_id = 1        :: pos_integer()
        % 角色名称
        ,name = <<>>        :: binary()
        % 连接器PID
        ,conn_pid           :: undefined | pid()
        % 当前所在地图ID
        ,map = 0            :: non_neg_integer()
        % 移动速度
        ,speed = 1          :: pos_integer()
        % 当前X坐标
        ,x = 0              :: non_neg_integer()
        % 当前Y坐标
        ,y = 0              :: non_neg_integer()
        % 角色朝向
        ,dir = 0            :: non_neg_integer()
        % 所在网格X坐标
        ,gx = 0             :: non_neg_integer()
        % 所在网格Y坐标
        ,gy = 0             :: non_neg_integer()

        % 角色状态
        ,status = 0         :: non_neg_integer()
        % 动作状态
        ,action = 0         :: non_neg_integer()
        % 骑乘状态
        ,ride = 0           :: non_neg_integer()
        % 战斗模式
        ,mode = 0           :: 0..2

        % 等级
        ,lev = 1            :: pos_integer()
        % 性别
        ,sex = 0            :: 0..2
        % 种族
        ,race = 0           :: non_neg_integer()
        % 职业
        ,classes = 0        :: non_neg_integer()
        % 阵营
        ,realm = 0          :: non_neg_integer()
        % 当前血量
        ,hp = 1             :: non_neg_integer()
        % 血量上限
        ,hp_max = 1         :: non_neg_integer()
        % 当前法力
        ,mp = 1             :: non_neg_integer()
        % 法力上限
        ,mp_max = 1         :: non_neg_integer()

    }
).
