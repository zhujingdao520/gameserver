%%----------------------------------------------------
%% 连接器相关数据结构定义
%%
%% @author yeahoo2000@gmail.com
%% @end
%%----------------------------------------------------
-record(conn,
        {
            socket
            %% 连接器进程
            ,conn_pid               ::pid()
            %% 账号
            ,account = <<>>         ::binary()
            %% 平台名字
            ,platform_id = 0        ::integer()
            %% 区ID(服ID)
            ,zone_id = 0            ::integer()
            %% 端口
            ,port = 0               ::integer()
            %% ip
            ,address = {0,0,0,0}    ::{0..255, 0..255, 0..255, 0..255}
            %% 外部进程
            ,object = undefine      ::undefined | role
            %% 受控对象的进程ID
            ,obj_pid = undefined    ::pid()
            %% 接受消息的数量
            ,recv_count = 0         ::integer()
            %% 发送消息的数量
            ,send_count = 0         ::integer()
            %% 创建连接时间
            ,connect_time = {0,0,0} ::{}
            %% 是否读取包头
            ,read_head  = false
        }).


% -record(conn, {
%         % 控制对象
%         % connector: 连接器自身
%         % object: 外部进程
%         object              :: undefined | connector | role
%         % 连接器类型
%         % game_server: 游戏客户端
%         % monitor: 监控器
%         % tester: 测试器
%         ,type = tester      :: game_server | monitor | tester
%         % 连接器的所有者帐号名
%         ,account = <<>>     :: binary()
%         % 所属平台
%         ,platform_id = 1    :: pos_integer()
%         % 所属分区
%         ,zone_id = 1        :: pos_integer()
%         % 已登录的角色
%         ,role_id = 1        :: pos_integer()
%         % 受控对象的进程ID
%         ,pid_object         :: undefined | pid()
%         % socket port
%         ,socket             :: undefined | port()
%         % 客户端IP
%         ,ip = {0, 0, 0, 0}  :: {0..255, 0..255, 0..255, 0..255}
%         % 客户端连接端口
%         ,port = 1           :: pos_integer()
%         % 建立连接的时间
%         ,connect_time = {0, 0, 0} :: {non_neg_integer(), non_neg_integer(), non_neg_integer()}
%         % 已接收的消息数量
%         ,recv_count = 0     :: non_neg_integer()
%         % 最后一次检查时记录的已接收的消息数量
%         ,last_recv_count = 0:: non_neg_integer()
%         % 已发送的消息数量
%         ,send_count = 0     :: non_neg_integer()
%         % 发送错误次数
%         ,error_send = 0     :: non_neg_integer()
%         % 记录客户端发送的错误数据包个数
%         ,bad_req_count = 0  :: non_neg_integer()

%         % 包体长度
%         ,length = 0         :: non_neg_integer()
%         % 当前包序
%         ,seq = 0            :: non_neg_integer()
%         % 标识正在读取数据包头
%         ,read_head = false  :: boolean()
%     }
% ).
