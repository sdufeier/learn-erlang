-module(file_1).
-export([range/2, range/3, range2/3]).

range(X, Y) ->
    lists:seq(X, Y).

range(X, Y, Incr) -> 
    lists:seq(X, Y, Incr).

range2(X, Y, Incr) ->
    List1 = lists:seq(X, Y),
    List2 = [Z || Z <- List1, Z rem Incr =:= 1],
    List2.
