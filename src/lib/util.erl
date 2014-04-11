% %%----------------------------------------------------
% %% 工具包
% %%
% %% @author yeahoo2000@gmail.com
% %% @end
% %%----------------------------------------------------
-module(util).
-export(
    [
        sleep/1
        ,md5/1
        ,floor/1
        ,check_range/3
        ,check_max/2
        ,check_min/2
        ,ceil/1
        ,replace/3
        ,rand/2
        ,rand_list/1
        ,rand_list/2
        ,load/1
        ,unixtsecond/0
%         ,is_process_alive/1
%         ,bool2int/1
%         ,for/3
%         ,unixtime/0
%         ,unixtime/1
%         ,readlines/1
%         ,save/2
%         ,template/2
%         ,tuplelist_to_record_string/1
%         ,fbin/2
%         ,cn/1
%         ,cn/2
%         ,build_fun/1
%         ,to_string/1
%         ,to_list/1
%         ,parse_qs/1
%         ,parse_qs/3
%         ,term_to_string/1
%         ,string_to_term/1
%         ,term_to_binary/1
%         ,all_to_binary/1
%         ,to_binary/1
%         ,check_name/1
%         ,text_filter/1
%         ,text_filter/2
%         ,text_banned/1
%         ,text_banned/2
%         ,time_left/2
%         ,utf8_len/1
    ]
).
% -include("common.hrl").
% -include("error_code.hrl").

% %% @doc 检查进程是否存活(可检查远程节点上的进程)
% %% <div>注意: 此函数的消耗比较高，非必要时不要使用</div>
% -spec is_process_alive(pid()) -> true | false.
% is_process_alive(P) when is_pid(P) ->
%     case rpc:call(node(P), erlang, is_process_alive, [P]) of
%         true -> true;
%         false -> false;
%         _ -> false
%     end.

%% @doc 程序暂停执行时长(单位:毫秒)
-spec sleep(T::integer()) -> ok.
sleep(T) ->
    receive
    after
        T -> ok
    end.

%% @doc 获取当前秒数
unixtsecond() ->
    calendar:datetime_to_gregorian_seconds(calendar:local_time())
.

% %% @doc 将true,false原子转成对应的0,1整数
% -spec bool2int(X::boolean()) -> 0 | 1.
% bool2int(true) -> 1;
% bool2int(false) -> 0.

% %% @doc 模拟for循环
% -spec for(Begin::integer(), End::integer(), Fun::function()) -> ok.
% for(End, End, Fun) ->
%     Fun(End),
%     ok;
% for(Begin, End, Fun) when Begin < End ->
%     Fun(Begin),
%     for(Begin + 1, End, Fun).


%% @spec unixtime() -> Timestamp
%% Timestamp = integer()
%% @doc 取得当前的unix时间戳
% unixtime() ->
%     {M, S, _} = erlang:now(),
%     M * 1000000 + S.

% %% @spec unixtime(ms) -> Timestamp
% %% Timestamp = integer()
% %% @doc 取得当前的unix时间戳，精确到毫秒
% unixtime(ms) ->
%     {S1, S2, S3} = erlang:now(),
%     trunc(S1 * 1000000000 + S2 * 1000 + S3 / 1000);

% %% 获取当天0时0分0秒的时间戳（这里是相对于当前时区而言，后面的unixtime调用都基于这个函数
% unixtime(today) ->
%     {M, S, MS} = now(),
%     {_, Time} = calendar:now_to_local_time({M, S, MS}), % 性能几乎和之前的一样
%     M * 1000000 + S - calendar:time_to_seconds(Time);

% %% 获取某时间戳的00:00:00的时间戳当Unixtime为0时，返回值有可能是负值，因为这里有时区偏移值（例如北京时间就可能是-28800
% unixtime({today, Unixtime}) ->
%     Base = unixtime(today),  % 当前周一
%     case Unixtime > Base of
%         false -> Base - ceil((Base - Unixtime) / 86400) * 86400;
%         true -> (Unixtime - Base) div 86400 * 86400 + Base
%     end;

% %% @spec unixtime({tomorrow, UnixTime}) -> UnixTime
% %% @doc 获取明天的00:00:00的时间戳
% unixtime({tomorrow, UnixTime}) ->
%     unixtime({today, UnixTime}) + 86400;

% %% @spec unixtime({nexttime, X}) -> NextTime;
% %% @spec 当前距离每天某个时刻的时间
% %% 如当前9:00 距离10:00为3600秒 返回3600
% %% 如当前时间 23:00 距离 1:00为7200秒 返回7200
% unixtime({nexttime, X}) ->
%     Now = unixtime(),
%     TodayStartTime = unixtime({today, Now}),
%     BaseTime = TodayStartTime + X, % 取当天距离X的时间为指定时间
%     case BaseTime > Now of
%         true -> BaseTime - Now; % 当前时间比指定时间小 直接返回差距
%         false -> BaseTime + 86400 - Now % 当前时间比指定时间大 加上一天时间后求差
%     end.


%% @doc 生成16位格式的md5值
-spec md5(iodata()) -> binary().
md5(Data) ->
    list_to_binary([io_lib:format("~2.16.0b",[N]) || N <- binary_to_list(erlang:md5(Data))]).

%% @doc 取小于X的最大整数
-spec floor(number()) -> integer().
floor(X) ->
    T = erlang:trunc(X),
    case X < T of
        true -> T - 1;
        _ -> T
    end.

%% @doc 取大于X的最小整数
-spec ceil(number()) -> integer().
ceil(X) ->
    T = erlang:trunc(X),
    case X > T of
        true -> T + 1;
        _ -> T
    end.

%% @doc 限制最大最小值
-spec check_range(Val, Min, Max) -> number() when
    Val :: number(),
    Min :: number(),
    Max :: number().
check_range(Val, Min, Max) ->
    if
        Val > Max -> Max;
        Val < Min -> Min;
        true -> Val
    end.

%% @doc 限制最大值
-spec check_max(Val::number(), Max::number()) -> number().
check_max(Val, Max) ->
    if
        Val > Max -> Max;
        true -> Val
    end.

%% @doc 限制最小值
-spec check_min(Val::number(), Min::number()) -> number().
check_min(Val, Min) ->
    if
        Val < Min -> Min;
        true -> Val
    end.

% %% @doc 以行模式读取文件
% -spec readlines(string()) -> {ok, list()} | {error, term()}.
% readlines(FileName) ->
%     case file:open(FileName, [read]) of
%         {error, Reason} -> {error, Reason};
%         {ok, F} -> get_all_lines(F, [])
%     end.
% get_all_lines(F, L) ->
%     case io:get_line(F, "") of
%         {error, Reason} -> {error, Reason};
%         eof -> {ok, lists:reverse(L)};
%         Line -> get_all_lines(F, [Line | L])
%     end.

%% @doc 读取文件，并将内容转成term()
-spec load(string()) ->
    {ok, undefined} | {ok, term()} | {error, term()}.
load(File) ->
    case file:consult(File) of
        {error, Reason} -> {error, Reason};
        {ok, [Term]} -> {ok, Term}
    end.

% %% @doc 将一个term()写入文件
% -spec save(string(), term()) -> ok | {error, term()}.
% save(File, Term) ->
%     case file:open(File, [write]) of
%         {error, Reason} -> {error, Reason};
%         {ok, F} ->
%             io:format(F, "~p.", [Term]),
%             file:close(F),
%             ok
%     end.

% %% @doc 替换模板变量
% -spec template(string(), [{atom(), string()}]) -> string() | {error, term()}.
% template(File, Vars) ->
%     case file:read_file(File) of
%         {error, Reason} -> {error, Reason};
%         {ok, Content} ->
%             V = [{lists:concat(["{{", K, "}}"]), to_list(V)} || {K, V} <- Vars],
%             template_replace(binary_to_list(Content), V)
%     end.
% template_replace(Text, []) -> Text;
% template_replace(Text, [{K, V} | L]) ->
%     % 用re:replace性能差到不能看...
%     % T = re:replace(Text, K, V, [caseless, global]),
%     T = replace(Text, K, V),
%     template_replace(T, L).

%% @doc 替换字符串
%% @todo 有必要再优化下性能
-spec replace(string(), string(), string()) -> string().
replace([], _Search, _Replace) -> "";
replace(Str, Search, Replace) ->
    replace(Str, Search, Replace, length(Search), []).
replace(Str, Search, Replace, Len, Rtn) ->
    case string:str(Str, Search) of
        0 -> Rtn ++ Str;
        P ->
            S = string:substr(Str, 1, P - 1) ++ Replace,
            replace(string:substr(Str, P + Len), Search, Replace, Len, Rtn ++ S)
    end.

%% @doc 产生一个介于Min到Max之间的随机整数
-spec rand(Min::integer(), Max::integer()) -> integer().
rand(Min, Min) -> Min;
rand(Min, Max) ->
    % 如果没有种子，将从核心服务器中去获取一个种子，以保证不同进程都可取得不同的种子
    % @todo 这个机制有必要改进下
    case get("rand_seed") of
        undefined ->
            Seed = case catch sys_rand:get_seed() of
                N = {_, _, _} -> N;
                _ -> erlang:now()
            end,
            random:seed(Seed),
            put("rand_seed", Seed);
        _ -> ignore
    end,
    M = Min - 1,
    random:uniform(Max - M) + M.

%% @doc 从一个list中随机取出一项
-spec rand_list(List::list()) -> null | term().
rand_list([]) -> null;
rand_list([I]) -> I;
rand_list(List) ->
    Idx = rand(1, length(List)),
    lists:nth(Idx, List).

%% @doc 从一个list中按各项权重值随机取出一项 每项为tuple() Pos为加权系数的位置
-spec rand_list(List::[tuple()], Pos::pos_integer()) -> null | tuple().
rand_list([], _Pos) -> null;
rand_list([I], _Pos) -> I;
rand_list(List, Pos) ->
    Sum = lists:sum([element(Pos, I) || I <- List]),
    RandVal = rand(1, Sum),
    get_rand_tuple(List, Pos, RandVal).
get_rand_tuple([H | T], Pos, RandVal) ->
    Rand = element(Pos, H),
    case RandVal =< Rand of
        true -> H;
        false -> get_rand_tuple(T, Pos, RandVal - Rand)
    end.

% %% @doc 将tuplelist转成一个record字串(tuplelist中必须要有record_name这一项)
% %% <div>注意: 此函数比较低效，在要求性能的情况下不能使用</div>
% -spec tuplelist_to_record_string([{atom(), any()}]) -> string() | {error, tuplelist_to_record_not_found_record_name}.
% tuplelist_to_record_string(L) ->
%     case lists:keyfind(record_name, 1, L) of
%         false -> {error, tuplelist_to_record_not_found_record_name};
%         {_, RecName} ->
%             Nl = lists:keydelete(record_name, 1, L),
%             io_lib:format("#~s{~s}", [RecName, rec_items(Nl, [])])
%     end.
% rec_items([], L) -> string:join(lists:reverse(L), ", ");
% rec_items([{K, V} | T], L) ->
%     S = io_lib:format("~s = ~p", [K, V]),
%     rec_items(T, [S | L]).

% %% @doc 返回格式化的二进制字符串
% %% <ul>
% %% <li>String: 待格式化的二进制字符串</li>
% %% <li>Args: 格式化参数，跟{@link io_lib:format/3}相同</li>
% %% </ul>
% -spec fbin(binary() | string(), list()) -> binary().
% fbin(String, Args) when is_binary(String) ->
%     list_to_binary(io_lib:format(String, Args));
% fbin(String, Args) ->
%     fbin(list_to_binary(String), Args).

% %% @doc 在控制台显示带中文的字符串
% -spec cn(String) -> ok when
%     String :: binary() | string().
% cn(String) ->
%     cn(String, []).

% %% @doc 在控制台显示带中文的字符串
% %% <ul>
% %% <li>F: 待显示的中文字符串（可带格式化参数）</li>
% %% <li>A: 格式化参数</li>
% %% </ul>
% -spec cn(F, A) -> ok when
%     F :: string() | binary(),
%     A :: [term()].
% cn(F, A) ->
%     io:format("~ts", [iolist_to_binary(io_lib:format(F, A))]).

% %% @doc 将任意类型的数据转成string()类型
% -spec to_string(any()) -> string().
% to_string(X) -> lists:flatten(io_lib:format("~w", [X])).

% %% @doc 将任意类型的数据转成list()类型(主要用于控制台打印).
% %% <div>注意:tuple类型有特殊处理</div>
% -spec to_list(any()) -> list().
% to_list(X) when is_integer(X)     -> integer_to_list(X);
% to_list(X) when is_float(X)       -> float_to_list(X);
% to_list(X) when is_atom(X)        -> atom_to_list(X);
% to_list(X) when is_binary(X)      -> binary_to_list(X);
% to_list(X) when is_pid(X)         -> pid_to_list(X);
% to_list(X) when is_function(X)    -> erlang:fun_to_list(X);
% to_list(X) when is_port(X)        -> erlang:port_to_list(X);
% to_list(X) when is_tuple(X)       -> to_string(X);
% to_list(X) when is_list(X)        -> X.

% %% @doc 根据字符串内容生成函数
% -spec build_fun(string()) -> function().
% build_fun(String)->
%     {ok, Tokens, _} = erl_scan:string(String),
%     {ok, L} = erl_parse:parse_exprs(Tokens),
%     B = erl_eval:new_bindings(),
%     BS = erl_eval:bindings(B),
%     {[F], []} = erl_eval:expr_list(L, BS),
%     F.

% %% @doc 解析 QueryString
% -spec parse_qs(string()) -> list().
% parse_qs(String) when is_binary(String) -> parse_qs(binary_to_list(String));
% parse_qs(String) -> parse_qs(String, "&", "=").

% %% @doc 按指定的字符切割字符串
% -spec parse_qs(String, Token1, Token2) -> list() when
%     String :: binary() | string(),
%     Token1 :: list(),
%     Token2 :: list().
% parse_qs(String, Token1, Token2) when is_binary(String) ->
%     parse_qs(binary_to_list(String), Token1, Token2);
% parse_qs(String, Token1, Token2) ->
%     [list_to_tuple(string:tokens(Kv, Token2)) || Kv <- string:tokens(String, Token1)].

% %% @doc term序列化，term转换为string格式
% -spec term_to_string(term()) -> string().
% term_to_string(Term) -> io_lib:format("~w", [Term]).

% %% @doc term序列化，term转换为binary
% -spec term_to_binary(term()) -> binary().
% term_to_binary(Term) -> list_to_binary(term_to_string(Term)).

% %% @doc term反序列化，string转换为term
% -spec string_to_term(String) -> {error, Reason} | {ok, term()} when
%     String :: undefined | string() | binary(),
%     Reason :: term().
% string_to_term(undefined) -> {ok, undefined};
% string_to_term("undefined") -> {ok, undefined};
% string_to_term(String) when is_binary(String) ->
%     string_to_term(binary_to_list(String));
% string_to_term(String) ->
%     case erl_scan:string(String ++ ".") of
%         {ok, Tokens, _} -> erl_parse:parse_term(Tokens);
%         {error, Err, _} -> {error, Err}
%     end.

% %% @doc 将列里的不同类型转行成字节型
% %% @todo 貌似不够高效，可以优化下
% %% <div>如 [&lt;&lt;"字节"&gt;&gt;, 123, asd, "assd"] 输出 &lt;&lt;"字节123asdassd"&gt;&gt;</div>
% -spec all_to_binary(list()) -> binary().
% all_to_binary(List) -> all_to_binary(List, []).
% all_to_binary([], Result) -> list_to_binary(Result);
% all_to_binary([P | T], Result) when is_list(P) ->
%     all_to_binary(T, lists:append(Result, P));
% all_to_binary([P | T], Result) when is_integer(P) ->
%     all_to_binary(T, lists:append(Result, integer_to_list(P)));
% all_to_binary([P | T], Result) when is_binary(P) ->
%     all_to_binary(T, lists:append(Result, binary_to_list(P)));
% all_to_binary([P | T], Result) when is_float(P) ->
%     all_to_binary(T, lists:append(Result, float_to_list(P)));
% all_to_binary([P | T], Result) when is_atom(P) ->
%     all_to_binary(T, lists:append(Result, atom_to_list(P))).

% %% @doc 将Val值转换为binary格式（8位二进制）
% %% @todo 貌似没有什么用，考虑删除掉
% -spec to_binary(integer()) -> binary().
% to_binary(Val) when is_integer(Val) -> list_to_binary(integer_to_list(Val));
% to_binary(Val) when is_float(Val) -> list_to_binary(float_to_list(Val));
% to_binary(Val) when is_list(Val) -> list_to_binary(Val);
% to_binary(Val) when is_binary(Val) -> Val;
% to_binary(_Val) -> <<>>.

% %% @doc 检查名称（会对长度、特殊字符屏蔽、敏感词屏蔽）
% -spec check_name(binary()) -> ok | {false, Reason::integer()}.
% check_name(Text) ->
%     % 检查长度
%     case name_len_valid(Text, 1, 13) of
%         false -> {false, ?ERR_NAME_LEN};
%         true ->
%             % 检查字符有效性
%             case name_valid(Text) of
%                 false -> {false, ?ERR_RESTRICT_WORD};
%                 true ->
%                     % 检查禁用词
%                     case text_banned(Text) of
%                         true -> {false, ?ERR_TEXT_BANNED};
%                         false -> ok
%                     end
%             end
%     end.

% %% @doc 检查文本是否含有英文半角符号等半角符号
% -spec is_normal_text(Text::iodata()) -> boolean().
% is_normal_text(Text) ->
%     % 反斜杠"\"的匹配，使用了双重转义，因为erlang里面"\"字符本身也需要转义
%     case re:run(Text, "[\;\^\,\.\"\'\:\+\=\!\?\<\>\/\*\|\~\`\@\#\$\%\(\)\{\}\\\-\\\[\\\]\\\\]", [{capture, none}, caseless, unicode]) of
%         match -> false;
%         nomatch -> true
%     end.

% %% @doc 检查文本中是否含有禁用词
% -spec text_banned(Text::iodata()) -> boolean().
% text_banned(Text) ->
%     case is_normal_text(Text) of
%         false -> true;
%         true ->
%             case text_banned(Text, keywords:banned()) of
%                 true -> true;
%                 false -> text_banned(Text, keywords:fuck_hexie())
%             end
%     end.

% %% @doc 检查文本中是否含有指定的关键词; true表示含有禁用词 false表示不含
% -spec text_banned(Text::iodata(), Keywords::[string()]) -> boolean().
% text_banned(_Text, []) -> false;
% text_banned(Text, [H | T]) ->
%     case re:run(Text, H, [{capture, none}, caseless]) of
%         match -> true;
%         _ -> text_banned(Text, T)
%     end.

% %% @doc 文字内容过滤，将关键词替换为"*"
% %% <div>注意:使用的是默认关键启库,keywords.erl</div>
% -spec text_filter(Text::iodata()) -> NewText::binary().
% text_filter(Text) ->
%     T1 = text_filter(Text, kwywords:banned()),
%     T2 = text_filter(T1, kwywords:fuck_hexie()),
%     list_to_binary(T2).

% %% @doc 文字内容过滤，将关键词替换为"*"
% -spec text_filter(Text::iodata(), Keywords::[string()]) -> string().
% text_filter(Text, []) -> Text;
% text_filter(Text, [H | L]) ->
%     T = re:replace(Text, H, "\*", [caseless, global]),
%     text_filter(T, L).

% %% @doc 计算剩余时间，单位：毫秒
% -spec time_left(TimeMax::integer(), Begin::erlang:timestamp()) -> integer().
% time_left(TimeMax, Begin)->
%     T = util:floor(TimeMax - timer:now_diff(erlang:now(), Begin) / 1000),
%     case T > 0 of
%         true -> T;
%         false -> 0
%     end.

% %% 字符串长度计算(支持中文)
% -spec utf8_len(Str::binary()) -> error | non_neg_integer().
% utf8_len(Str) ->
%     case asn1rt:utf8_binary_to_list(Str) of
%         {error, _Reason} -> error;
%         {ok, CharList} -> string_width(CharList)
%     end.

% %% -----------------------------------------
% %% 私有函数
% %% -----------------------------------------

% %% 检查名称长度规范
% name_len_valid(Text, Min, Max) ->
%     case asn1rt:utf8_binary_to_list(Text) of
%         {error, _Reason} -> false;
%         {ok, CharList} ->
%             Len = string_width(CharList),
%             Len < Max andalso Len > Min
%     end.

% %% 检查名字：只允许使用汉字(不含标点符号)、字母、数字和下划线
% name_valid(Text) ->
%     % 貌似测试只有binary才能正确执行到结果
%     % unicode字符集：
%     % {FF00}-{FFEF} 通用ASCII全角标点符号集
%     % {3000}-{303F} 中日韩标点符号集
%     % {4E00}-{9FBF} 中日韩统一汉字
%     case re:run(Text, "[^a-zA-Z0-9\\x{4E00}-\\x{9FA5}_]", [{capture, none}, caseless, unicode]) of
%         match -> false; %<<"角色名只允许使用汉字、字母、数字和下划线">>}; % 含有非法字符
%         nomatch -> true
%     end.

% %% 字符宽度，1汉字=2单位长度，1数字字母=1单位长度
% string_width(String) ->
%     string_width(String, 0).
% string_width([], Len) ->
%     Len;
% string_width([H | T], Len) ->
%     case H > 255 of
%         true ->
%             string_width(T, Len + 2);
%         false ->
%             string_width(T, Len + 1)
%     end.
