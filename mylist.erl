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

cut([], _, _) -> 
    [];
cut(List, From, To) ->
    List0 = cut(List, From, To, []),
    List1 = lists:reverse(List0),
    List1.

cut([H|T], From, To, Result) -> 
    case {From,To} of
        {_, 0} -> Result;
        {0, _} -> cut(T, From, To-1, [H | Result]);
        {_, _} -> cut(T, From-1, To-1, Result)
    end.

