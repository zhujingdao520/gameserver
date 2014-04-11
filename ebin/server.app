
% {appliation, erl_rpc,
%     [{description,"my test project"},
%         {vsn, "1.0.0"},
%         {modules,  [erl_app,erl_sup, erl_server]},
%         {registered, []},
%         {applications,[kernel, stdlib]},
%         {mod, {erl_app, []}}
%     ]
% }.

{application, erl_rpc,
 [{description, "RPC server for Erlang and OTP in action"},
  {vsn, "0.1.0"},
  {modules, [erl_app,
             erl_sup,
             erl_server]},
  {registered, [tr_sup1, tr_server1]},
  {applications, [kernel, stdlib]},
  {mod, {erl_app, []}}
 ]}.
