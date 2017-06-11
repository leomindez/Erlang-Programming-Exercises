%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. jun 2017 01:04
%%%-------------------------------------------------------------------
-module(list).
-author("leo").

%% API
-export([create/1]).

create(Count) when (Count > 0) ->
  create(Count,[]).

create(Count,Acc) when (Count > 0) ->
  create(Count-1,[Count|Acc]);

create(0,Acc) ->
  Acc.