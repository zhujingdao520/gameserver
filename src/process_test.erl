% -module(process_test).
% -export([start_a/0,start_b/1,af1/1,update/1]).

% start_a()->
%     spawn(fun af/0).

% af()->
%     io:format("process a created."),
%     process_flag(trap_exit,true),
%     receive
%         {'EXIT',_Pid,Why} ->
%             io:format("Receive hello.~p~n",[Why]);

%         {hello,X,Y} ->
%             io:format("Receive hello.~p~n",[X*Y]),
%             af();
%         abc ->
%             io:format("Receive abc. ~p~n",[abc]),
%             af();
%         abcd ->
%             io:format("Receive abcd. ~p~n",[abcd]),
%             af()

%     end.

% start_b(Pid)->
%     spawn(process_test,af1,[Pid]).

% af1(Pid)->
%     link(Pid),
%     exit(Pid,stop),
%     receive
%         Y->Y
%     end.

% update(Module) ->
%     code:purge(Module),
%     code:load_file(Module).

-module(process_test).
% -export([start_a/0,start_b/1,af1/1]).
-compile([export_all]).
start_a()->
    spawn(fun af/0).

af()->
    io:format("process a created."),
    process_flag(trap_exit,true),
    receive
        {'EXIT',_Pid, abc} ->
           io:format("kill"),
           af();

        {'EXIT',_Pid,normal} ->
         io:format("normal");

        {'EXIT',_Pid,kill} ->
           io:format("kill"),
           af()
    end.

start_b(Pid)->
    spawn(process_test,af1,[Pid]).

af1(Pid)->
    link(Pid),
    exit(Pid, kill),
    receive
        X -> X
    end.

start() ->
  Block = <<"111100011111111111111100111001111111110000011111000000001111111111111111">>,
  do_load_block(8, 0, 0, Block)
.

do_load_block(_Width, _X, _Y, <<>>) -> ok;
do_load_block(Width, X, Y, Bin) ->
  <<Line:Width/binary, Rest/binary>> = Bin,
  do_load_line_block(X, Y, Line),
  do_load_block(Width, X + 1, Y, Rest)
.

do_load_line_block(_X, _Y, <<>>) -> ok;
do_load_line_block(X, Y, Line) ->
  <<Pos, Rest/binary>> = Line,
  io:format("type:~p~n",[is_integer(Pos)]),
  io:format("pos[x:~w y:~w val:~p] ~n",[X, Y, Pos]),
  do_load_line_block(X, Y + 1, Rest)
.

% -module(rf).
% -compile(export_all).
% -include_lib("kernel/include/file.hrl").

% read(Filename)-> read(Filename, 1024 * 1024).

% read(File, Bs)->
%     case file:open(File, [raw, binary]) of
%         {ok, Fd} ->
%             scan_file(Fd, file:read(Fd, Bs), Bs);
%         {error, _} = E ->
%             E
%     end .

% scan_file(Fd, {ok, _Binary}, Bs) ->
%     scan_file(Fd, file:read(Fd, Bs), Bs);
% scan_file(Fd, eof, _Bs) ->
%     file:close(Fd);
% scan_file(Fd, {error, _}, _Bs) ->
%     file:close(Fd).

% read1(Filename) ->
%     {ok, _Binary} = file:read_file(Filename),
%     ok.

upmap(F, L) ->
    Parent = self(),
    Ref = make_ref(),
    [receive
      {Ref, Result} -> Result
    end
     || _ <- [spawn(fun() -> Parent ! {Ref, F(X)} end) || X <- L]].

% read2(Filename)->
%     PoolSize = erlang:system_info(thread_pool_size),
%     read2(Filename, PoolSize).

% read2(_, 0)->
%     io:format("setting +A first");
% read2(Filename, PoolSize)->
%     {ok, FInfo} = file:read_file_info(Filename),
%     Bs = FInfo#file_info.size div PoolSize,
%     erlang:display([{bs, Bs}, {poolsize, PoolSize}]),
%     upmap(fun (Off)->
%           {ok, Fd} = file:open(Filename, [raw, binary]),
%           {ok, _} = file:pread(Fd, Off * Bs, Bs),
%           file:close(Fd),
%           erlang:display([reading, block, Off * Bs, Bs, done]),
%           ok
%           end, lists:seq(0, PoolSize - 1)),
%     ok.


test_put() ->
  put(1, {10}).
test_get() ->
  get(1).
