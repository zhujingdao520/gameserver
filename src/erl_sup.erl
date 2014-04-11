
-module(erl_sup).
-behaviour(supervisor).

% API
-export([start_link/0,
        start_child/2
        ]).

% callback
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    RestartStrategy = {one_for_one, 4, 3600},
    ChildSpec = [
        {erl_element_sup, {erl_element_sup, start_link, []}, permanent, 2000, supervisor,[erl_element_sup]},
        {sup_accept, {sup_accept, start_link, []}, permanent, 2000, supervisor,[sup_accept]},
        {erl_event, {erl_event, start_link, []}, permanent, 2000, worker,[erl_event]},
        {sys_listen, {sys_listen, start_link, []}, permanent, 2000, worker,[sys_listen]},
        {role_create, {role_create, start_link, []}, permanent, 2000, worker, [role_create]},
        {map_mgr, {map_mgr, start_link, []}, permanent, 2000, worker, [map_mgr]}
    ],
    {ok,{RestartStrategy, ChildSpec}}.

start_child(Value, Lease_time) ->
    supervisor:start_child(?SERVER, [Value, Lease_time]).
