-module(sum_three).

%add_three = fun(A,B,C) -> A+B+C end.

-export([add_three/3]).

add_three(A, B, C) ->
    A+B+C.