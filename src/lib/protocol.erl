%%----------------------------------------------------
%% 协议解析相关函数
%%
%% @author yeahoo2000@gmail.com
%% @end
%%----------------------------------------------------
-module(protocol).
-export(
    [
        string/1
        ,int8/1
        ,uint8/1
        ,int16/1
        ,uint16/1
        ,int32/1
        ,uint32/1
        ,float/1
        ,array/2
        ,read/2
        ,read/3
        ,read_fields/2
        ,pack/2
        ,unpack/1
        ,hex2bin/1
    ]
).

string_impl(Bin, Len) when is_binary(Bin) andalso is_integer(Len) ->
    StrLen = Len - 1,
    <<Str:StrLen/binary, _Ending, Rest/binary>> = Bin,
    {Str, Rest}.

%% @doc 读取一个字符串
-spec string(binary()) -> {binary(), binary()}.
string(<<L:16/little, Bin/binary>>) -> string_impl(Bin, L).

%% @doc 读取一个无符号8位整数
-spec int8(binary()) -> {integer(), binary()}.
int8(<<N:8/signed, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个无符号8位整数
-spec uint8(binary()) -> {non_neg_integer(), binary()}.
uint8(<<N:8, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个有符号16位整数
-spec int16(binary()) -> {integer(), binary()}.
int16(<<N:16/signed, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个无符号16位整数
-spec uint16(binary()) -> {non_neg_integer(), binary()}.
uint16(<<N:16/little, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个有符号32位整数
-spec int32(binary()) -> {integer(), binary()}.
int32(<<N:32/signed-little, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个无符号32位整数
-spec uint32(binary()) -> {non_neg_integer(), binary()}.
uint32(<<N:32, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个有符号64位整数
-spec float(binary()) -> {float(), binary()}.
float(<<N:64/float, Bin/binary>>) -> {N, Bin}.

%% @doc 读取一个数组
-spec array(binary(), function()) -> {[tuple()], binary()}.
array(<<N:16, Bin/binary>>, Fun) -> array(N, Bin, Fun, []).
array(0, Bin, _Fun, List) -> {List, Bin};
array(N, Bin, Fun, List) ->
    {R, B} = Fun(Bin),
    array(N-1, B, Fun, [R | List]).

%% @doc 读取一个字符串
-spec read(Type, binary()) -> {integer() | float() | [tuple()], binary()} when
    Type :: string | int8 | uint8 | int16 | uint16 | int32 | uint32 | float.
read(string, <<L:16, Bin/binary>>) ->
    string_impl(Bin, L);
read(int8, <<N:8/signed, Bin/binary>>) ->
    {N, Bin};
read(uint8, <<N:8, Bin/binary>>) ->
    {N, Bin};
read(int16, <<N:16/signed, Bin/binary>>) ->
    {N, Bin};
read(uint16, <<N:16, Bin/binary>>) ->
    {N, Bin};
read(int32, <<N:32/signed, Bin/binary>>) ->
    {N, Bin};
read(uint32, <<N:32, Bin/binary>>) ->
    {N, Bin};
read(float, <<N:64/float, Bin/binary>>) ->
    {N, Bin}.
%% @doc 读取数组
-spec read(array, binary(), function()) -> {term(), binary()}.
read(array, <<N:16, Bin/binary>>, Fun) ->
    array(N, Bin, Fun, []).

%% @doc 按格式定义，动态解析二进行数据
%% <div>格式field: {类型, 名称, 描述} | {array, 名称, 描述, 子格式定义}</div>
-spec read_fields([tuple()], binary()) -> {tuple(), binary()}.
read_fields(Fields, Bin) ->
    read_fields(Fields, Bin, []).
read_fields([], Bin, Rtn) ->
    {list_to_tuple(lists:reverse(Rtn)), Bin};
read_fields([{int8, _, _} | T], <<V:8/signed, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{uint8, _, _} | T], <<V:8, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{int16, _, _} | T], <<V:16/signed, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{uint16, _, _} | T], <<V:16, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{int32, _, _} | T], <<V:32/signed, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{uint32, _, _} | T], <<V:32, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{float, _, _} | T], <<V:64/float, Bin/binary>>, Rtn) ->
    read_fields(T, Bin, [V | Rtn]);
read_fields([{string, _, _} | T], <<Len:16, Bin/binary>>, Rtn) ->
    {V, B} = string_impl(Bin, Len),
    read_fields(T, B, [V | Rtn]);
read_fields([{array, _, _, Fields} | T], <<Len:16, Bin/binary>>, Rtn) ->
    {V, B} = read_array(Len, Bin, Fields, []),
    read_fields(T, B, [V | Rtn]).
%% 读取数组
read_array(0, Bin, _, Rtn) -> {lists:reverse(Rtn), Bin};
read_array(N, Bin, Fields, Rtn) ->
    {Val, B} = read_fields(Fields, Bin),
    read_array(N - 1, B, Fields, [Val | Rtn]).

%% @doc 把协议号和包体打包成一个数据包
-spec pack(non_neg_integer(), binary()) -> binary().
pack(Code, Data) ->
    <<(byte_size(Data) + 4):32/little, Code:16/little, 0:16/little,
      Data/binary>>.

unpack(Data) ->
     <<Size:32/little, Code:16/little, 0:16/little,
      Bin/binary>> = Data,
      % io:format("unpack[size:[~w] code:[~w] bin:[~w]]", [Size], [Code], [Bin]),
      {ok, Bin}.


h2b(Hex) when is_integer(Hex) ->
    if
        Hex >= $0 andalso Hex =< $9 -> Hex - $0;
        Hex >= $a andalso Hex =< $f -> Hex - $a + 10;
        Hex >= $A andalso Hex =< $F -> Hex - $A + 10
    end.

hex2bin(<<A:8, B:8, Rest/binary>>) ->
    <<(h2b(A) * 16 + h2b(B)), (hex2bin(Rest))/binary>>;
hex2bin(<<A:8>>) ->
    <<(h2b(A))>>;
hex2bin(<<>>) ->
    <<>>.

