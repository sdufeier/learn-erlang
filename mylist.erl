-module(mylist).
-author("Du Fei").

-compile(export_all).

sayHi() -> 
    io:format("Hello world!~n").

range(X, Y) ->
    lists:seq(X, Y).

range(X, Y, Incr) -> 
    lists:seq(X, Y, Incr).

range2(X, Y, Incr) ->
    List1 = lists:seq(X, Y),
    List2 = [Z || Z <- List1, Z rem Incr =:= 1],
    List2.
