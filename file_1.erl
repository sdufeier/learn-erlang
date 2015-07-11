-module(file_1).
-export([range/2, range/3]).

range(X, Y) ->
    lists:seq(X, Y).

range(X, Y, Incr) -> 
    lists:seq(X, Y, Incr).
