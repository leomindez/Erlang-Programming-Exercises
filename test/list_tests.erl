%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. jun 2017 01:18
%%%-------------------------------------------------------------------
-module(list_tests).
-include_lib("eunit/include/eunit.hrl").

%% API

create_test() ->
  ?assertException(error,function_clause,list:create(-1)),
  ?assertEqual([1,2,3],list:create(3)).

