%%----------------------------------------------------
%% 公共定义文件
%% (不要随意在此添加新的定义)
%%
%% @author yeahoo2000@gmail.com
%%----------------------------------------------------
-define(DB, mysql_conn_poll).
-define(CLIENT_WEB, 1).
-define(CLIENT_IOS, 2).
-define(CLIENT_ANDROID, 3).

%% 数据库状态
-define(DB_NOCHANGE, 0).
-define(DB_INSERT, 1).
-define(DB_UPDATE, 2).

%% 数字型的bool值
-define(FALSE, 0).
-define(TRUE, 1).

%% 语言翻译，返回给玩家的文本信息需要经过此宏的转换
-define(T(Text), lang:get(Text)).

%% 返回格式化字符串，等价于io_lib:format/2
-define(S(F, A), io_lib:format(F, A)).

%% 自定格式信息输出，相当于io:format，支持中文输出
-define(P(F, A), io:format("~ts", [iolist_to_binary(io_lib:format(F, A))])).
-define(P(F), ?P(F, [])).
%% 按固定格式输出调试信息，非debug模式下自动关闭
-ifdef(debug).
-define(DEBUG(Msg), logger:debug(Msg, [], ?MODULE, ?LINE)).
-define(DEBUG(F, A), logger:debug(F, A, ?MODULE, ?LINE)).
-else.
-define(DEBUG(Msg), ok).
-define(DEBUG(F, A), ok).
-endif.
%% 按固定格式输出普通信息到控制台
-define(INFO(Msg), logger:info(Msg, [], ?MODULE, ?LINE)).
-define(INFO(F, A), logger:info(F, A, ?MODULE, ?LINE)).
%% 按固定格式输出错误信息到控制台
-define(ERR(Msg), logger:error(Msg, [], ?MODULE, ?LINE)).
-define(ERR(F, A), logger:error(F, A, ?MODULE, ?LINE)).

%% 自定义类型:角色ID
-type role_id() :: {pos_integer(), pos_integer(), pos_integer()}.
%% 自定义类型:单位ID
-type unit_id() :: {pos_integer(), pos_integer()}.

%% 默认进入场景{场景ID, X, Y}
-define(MAIN_CITY, {1, 11, 11}).

%% 中央服信息数据结构
-record(center, {
        % 标识中央服是否连接
        ready = 0           :: ?TRUE | ?FALSE
        % 中央服镜像进程pid(远端)
        ,pid                :: undefined | pid()
        % 中央服节点名
        ,node               :: atom()
        % 本地平台标识
        ,platform_id = 1    :: pos_integer()
        % 本地游戏区号
        ,zone_id = 1        :: pos_integer()
    }
).

%% 带catch的gen_server:call/2，返回{error, timeout} | {error, noproc} | {error, term()} | term() | {exit, normal}
%% 此宏只会返回简略信息，如果需要获得更详细的信息，请使用以下方式自行处理:
%% case catch gen_server:call(Pid, Request)
-define(CALL(_Call_Pid, _Call_Request),
    case catch gen_server:call(_Call_Pid, _Call_Request) of
        {'EXIT', {timeout, _}} -> {error, timeout};
        {'EXIT', {noproc, _}} -> {error, noproc};
        {'EXIT', {normal, _}} -> {error, exit};
        {'EXIT', _Call_Err} -> {error, _Call_Err};
        _Call_Return -> _Call_Return
    end
).

%% 未实现的函数请加入下面这个宏到函数体中
-define(NYI, io:format("*** NYI ~p ~p~n", [?MODULE, ?LINE]), exit(nyi)).

%% 将record转换成tuplelist
-define(RECORD_TO_TUPLELIST(Rec, Ref), lists:zip([record_name | record_info(fields, Rec)], tuple_to_list(Ref))).
