%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. jun 2017 00:17
%%%-------------------------------------------------------------------
-module(sum_tests).
-include_lib("eunit/include/eunit.hrl").

sum_with_limit_test() ->
   ?assertEqual(1,sum:sum_with_limit(1)),
   ?assertEqual(15,sum:sum_with_limit(5)),
   ?assertException(error,function_clause,sum:sum_with_limit(0)).

sum_from_to_test() ->
   ?assertEqual(6,sum:sum_from_to(1,3)),
   ?assertEqual(6,sum:sum_from_to(6,6)),
   ?assertException(error,function_clause,sum:sum_from_to(6,4)).