%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. jun 2017 10:05
%%%-------------------------------------------------------------------
-module(print).
-author("leo").

%% API
-export([print_numbers/1]).

print_numbers(Limit) ->
  Seq = lists:seq(1,Limit),
  print_number(Seq).

print_number([A|T]) ->
  io:format("Number:~p~n",[A]),
  print_number(T);

print_number([]) ->
  ok.


