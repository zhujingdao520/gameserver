%%
%% Copyright (C) 2010-2014 by krasnop@bellsouth.net (Alexei Krasnopolski)
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%% http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License. 
%%

%% @since 2010-10-08
%% @copyright 2010-2014 Alexei Krasnopolski
%% @author Alexei Krasnopolski <krasnop@bellsouth.net> [http://krasnopolski.org/]
%% @version {@version}
%% @doc Function handle_response of the module splits the binary data stream from socket to MySQL packets, 
%% separates metadata packets and row data packets and forms a response tuple.

-module(packet_response).

%%
%% Include files
%%

-include("client_records.hrl").

%%
%% Import modules
%%
-import(lists, [reverse/1]).
-import(conn, []).
-import(io_socket, []).
-import(packet_parser, []).

%%
%% Exported Functions
%%
-export([handle_response/2, handle_response/3]).

%%
%% API Functions
%%
-spec handle_response(Connection::#connection{}, Stmt::atom()) -> {#metadata{}, list()}.

%% @spec handle_response(Connection::#connection{}, Initial_metadata::#metadata{}, Stmt::atom()) -> {Metadata::#metadata{}, Result} | #mysql_error{}
%% Result = [#ok_packet{}] | [#ok_stmt_packet{}] |
%% list(integer() | float() | string() | binary() | #mysql_time{} | #mysql_decimal{})
%% @doc Waits for response from SQL server, retrieves packets from socket and parses its to list 
%%
handle_response(Connection, Initial_metadata, Stmt) -> 
  Is_compress = Connection#connection.ds_def#datasource.flags#client_options.compress =:= 1,
  case Packet_list = io_socket:receive_data(Connection#connection.socket, Is_compress) of
    #mysql_error{} -> Packet_list;
    _ -> handle_response(0, reverse(Packet_list), Initial_metadata, [], Stmt)
  end.

%% @spec handle_response(Connection::#connection{}, Stmt::atom()) -> {Metadata::#metadata{}, Result} | #mysql_error{}
%% Result = [#ok_packet{}] | [#ok_stmt_packet{}] | [#error_packet{}] | [#rs_header{}] | [#eof_packet{}] |
%%          list(integer() | float() | string() | binary() | #mysql_time{} | #mysql_decimal{})
%% 
%% @doc
%% @see handle_response/3
%%
handle_response(Connection, Stmt) -> handle_response(Connection, #metadata{}, Stmt).

%%
%% Local Functions
%%
-spec handle_response(State::integer(), Packet_list::list(#packet{}), Metadata::#metadata{}, Result::list(), Stmt::atom())
        -> {#metadata{}, list()} | #mysql_error{}.

% TODO:  each packet in separate processes
%% @spec handle_response(State::integer(), Packet_list::list(#packet{}), Metadata::#metadata{}, Result::list(), Stmt::atom()) -> {#metadata{}, list()} | #mysql_error{}
%% 
%% @doc
%% Transforms list of binary mySQL packets to Metadata record and list of row record.
handle_response(_, [], Metadata, Result, _) -> {Metadata, reverse(Result)};
handle_response(State, [Packet | Packet_list], Metadata, Result, Stmt) -> 
  case R = packet_parser:parse_server_response_packet(State, Packet#packet.body, Metadata, Stmt) of
    #ok_packet{} -> 
      New_metadata = Metadata#metadata{server_status = R#ok_packet.server_status},
      handle_response(State, Packet_list, New_metadata, [R | Result], Stmt);
    #ok_stmt_packet{} -> 
      New_metadata = Metadata#metadata{
        field_count = R#ok_stmt_packet.columns_number,
        param_count = R#ok_stmt_packet.params_number
      },
      handle_response(State + 1, Packet_list, New_metadata, [R | Result], Stmt);
    #error_packet{} -> handle_response(State, Packet_list, Metadata, [R | Result], Stmt);
    #rs_header{} -> New_metadata = Metadata#metadata{field_count = R#rs_header.field_count}, 
      handle_response(State + 1, Packet_list, New_metadata, Result, Stmt);
%    #field_metadata{} when (State =:= 2) and (Stmt =:= prepare) -> 
%      New_metadata = Metadata#metadata{field_metadata = [R|Metadata#metadata.field_metadata]},
%      handle_response(State, Packet_list, New_metadata, Result, Stmt);
    #field_metadata{} when (State =:= 1) and (Stmt =:= prepare) -> 
      New_metadata = Metadata#metadata{param_metadata = [R | Metadata#metadata.param_metadata]},
      handle_response(State, Packet_list, New_metadata, Result, Stmt);
    #field_metadata{} ->
      New_metadata = Metadata#metadata{field_metadata = [R | Metadata#metadata.field_metadata]},
      handle_response(State, Packet_list, New_metadata, Result, Stmt);
    #eof_packet{} when (State =:= 1) ->
      New_metadata = Metadata#metadata{
        field_metadata = reverse(Metadata#metadata.field_metadata)
      },
      handle_response(State + 1, Packet_list, New_metadata, Result, Stmt);
    #eof_packet{} ->
      New_metadata = Metadata#metadata{
        server_status = R#eof_packet.server_status
      },
      handle_response(State, Packet_list, New_metadata, Result, Stmt);
    #mysql_error{} -> R;
    [_|_] -> handle_response(State, Packet_list, Metadata, [R | Result], Stmt);
    _ -> false
  end.
