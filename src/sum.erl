%%%-------------------------------------------------------------------
%%% @author Leonel Mendez
%%% @doc
%%%
%%% @end
%%% Created : 07. jun 2017 23:57
%%%-------------------------------------------------------------------
-module(sum).
-author("leo").

%% API
-export([sum_with_limit/1,sum_from_to/2]).

sum_with_limit(Limit) when (Limit > 0)->
  Array = lists:seq(1,Limit),
  sum(Array,0).

sum_from_to(From,To) when (From =< To) ->
  Array = lists:seq(From,To),
  sum(Array,0).

sum([A|T],Acc) ->
    sum(T,Acc+A);

sum ([],Acc) ->
  Acc.
