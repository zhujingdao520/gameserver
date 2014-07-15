
-module(test_mgr).
-compile([export_all]).

-define(OPERATION_TCP, [binary
                ,{packet, 0}            %% tcp 原封不动的数据包发送出去
                ,{active, false}
                ,{exit_on_close, false} %% socket 关闭后缓冲数据还会发出去
                ,{nodelay, false}       %% 少量数据也发送
                ,{reuseaddr, true}      %% 地址是否可重用
                ,{send_timeout, 15000}  %% 15000 收不到消息发出{error, timeout}
                ,{delay_send, true}     %% 每个port 维护一个发送队列，消息都是
                                        %% 存在队列，等待可写时才把消息发送出去
                ]).

-define(CONNECT_OTP, [binary, {packet, 0}]).
-include("common.hrl").

get_socket() ->
    {ok, Socket} = gen_tcp:connect("localhost", ?PORT, ?CONNECT_OTP),
    Socket
.




