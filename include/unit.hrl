
%% 单元数据
-record(unit, {
    % 静态ID(配置表ID)
    id      = 0,
    % 动态ID
    base_id = 0,
    % HP
    hp      = 0,
    % MP
    mp      = 0,
    % 名字
    name    = "",
    % 1:静态物品 2:怪物
    type    = 0,
    % 是否只有一个打这个怪
    locked  = 0,
    % 移动时间间隔
    t_move  = 0,
    % 攻击时间间隔
    t_atk   = 0,
    % 当前时间
    ts      = 0,
    % 寻路路径
    paths   = [],
    % 身上命令
    order   = [],
    }).

%% 指令数据(命令)
-record(unit_order, {
        % 指令
        order           ::atom()
        % 参数
        ,arg = {}       ::tuple()
        % 完成之后事件
        ,over           ::undefined | defense | stop
        }).

