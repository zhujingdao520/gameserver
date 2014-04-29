
-module(test).
-compile([export_all]).

start([Host, Port, _RoleID, _Platfrom, _Zoneid]) ->
    keypool:start_link(),
    tester:start_link(Host, Port)
.

stop() ->

    ok
.

 % test:start(["localhost", 5200,1,1,1]).