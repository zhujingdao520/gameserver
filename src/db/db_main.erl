
-module(db_main).
-compile([export_all]).

-include("common.hrl").
-include("deps/db/include/client_records.hrl").
-include("deps/db/include/mysql_types.hrl").
-include("deps/db/include/test.hrl").

start() ->
    my:start_client(),
    DS_def = #datasource{
        host = env:get_cnf(host),
        port = env:get_cnf(port),
        database = env:get_cnf(database),
        user = env:get_cnf(user),
        password = env:get_cnf(possword),
%    flags = #client_options{}
    flags = #client_options{trans_isolation_level = serializable}
    },

    my:new_datasource(datasource, DS_def),
    ?INFO("[DB Init Success] [host:~p, port:~w database:~p, user:~p]",
        [?TEST_SERVER_HOST_NAME, ?TEST_SERVER_PORT, ?TEST_DB_NAME, ?TEST_USER]),
    ok
.

stop() ->
    my:stop_client(),
    ok
.

insert() ->
    Conn = get_connection(),
    % {_,[OK]} = connection:execute_query(Conn, "INSERT INTO message VALUES (NULL,0,'header','<body>Text</body>','not',1,NULL)"),
    {R1,R2} = connection:execute_query(Conn, "select id,version,header from message where id = 405"),
    io:format("return:[R1:~p~n][R2:~p]~n",[R1, R2])
.

update() ->
    ok
.

%% 获得一个连接
get_connection() ->
    datasource:get_connection(datasource)
.

%% 返回连接到池中
return_connection(Conn) ->
    datasource:return_connection(datasource, Conn)
.