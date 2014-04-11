
%% ------------------------------------------------
%%  角色数据的管理及查询
%% ------------------------------------------------
-module(role_query).
-behaviour(gen_server).

%% callback
-export([
        init/1
        ,handle_cast/2
        ,handle_info/2
        ,handle_call/3
        ,terminate/2
        ,code_change/3
        ]).

%% API
-export([
        start_link/0
    ]).

% -record(, {field = value}).
-include("role.hrl").

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init([]) ->
    ets:new(role_cache, [set, named_table, public, [keypos, #role.user_id]]),
    ets:new(role_id_index_list, [set, named_table, public, [keypos, 1]]),
    ets:new(role_name_index_list, [set, named_table, public, [keypos, 1]]),

    {}.

handle_call(_Request, _From, State) ->

    {reply, State}
.

handle_cast(_Request, State) ->

    {noreply, State}
.

handle_info(_Info, State) ->

    {noreply, State}
.

terminate(_Reason, State) ->

    {normal, State}
.

code_change(_Oldvsn, State, _Extra) ->
    {ok, State}
.


%% ------------------------------------------
%% API
%% ------------------------------------------


