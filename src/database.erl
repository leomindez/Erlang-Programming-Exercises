%%%-------------------------------------------------------------------
%%% @author leo
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. jun 2017 12:35
%%%-------------------------------------------------------------------
-module(database).
-author("leo").

%% API
-export([new/0,write/3,destroy/1,read/2,match/2,delete/2]).

new() ->
  [].

write(Key,Element,Db) ->
  [{Key,Element}|Db].

read(Key,Db)->
  read_key(Key,Db).

delete(Key,Db) ->
  delete_key(Key,Db,[]).

delete_key(Key,[{K,E}|T],Acc) ->
  case (Key =/= K) of
    true -> delete_key(Key,T,[{K,E}|Acc]);
    false -> delete_key(Key,T,Acc)
  end;

delete_key(_Key,[],Acc) ->
  Acc.

match(Element,Db) ->
  match_element(Element,Db,[]).

match_element(Element,[{K,E}|T], Acc) ->
  case (Element =:= E) of
    true -> match_element(Element,T,[K|Acc]);
    false -> match_element(Element,T,Acc)
   end;

match_element(_Element,[],Acc) ->
  Acc.

read_key(Key,[{K,E}|T]) ->
  case (Key =:= K) of
    true -> {ok,E};
    false -> read_key(Key,T)
  end;

read_key(_Key,[]) ->
  {error,instance}.

destroy(_Db) ->
  ok.