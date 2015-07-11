-module(file_1).
-compile(export_all).


range(X, Y) ->
    lists:seq(X, Y).

range(X, Y, Incr) -> 
    lists:seq(X, Y, Incr).
