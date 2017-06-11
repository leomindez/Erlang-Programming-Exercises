%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. jun 2017 10:48
%%%-------------------------------------------------------------------
-module(database_tests).
-include_lib("eunit/include/eunit.hrl").

new_test() ->
  ?assertEqual([],database:new()).

write_test() ->
  Db = database:new(),
  ?assertMatch([{test,testing}],database:write(test,testing,Db)).

read_test() ->
  Db = database:new(),
  Db2 = database:write(test,testing,Db),
  ?assertMatch({ok,testing},database:read(test,Db2)).

match_test() ->
  Db = database:new(),
  Db2 = database:write(test,testing,Db),
  Db3 = database:write(testtwo,testing,Db2),
  ?assertMatch([test,testtwo],database:match(testing,Db3)).

delete_test() ->
  Db = database:new(),
  Db2 = database:write(test,testing,Db),
  Db3 = database:write(testtwo,testing,Db2),
  ?assertMatch([{testtwo,testing}],database:delete(test,Db3)).