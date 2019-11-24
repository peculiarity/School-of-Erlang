-module(fizzbuzz).

-export([fizzbuzz/0]).

% I ran the tests but basically there is this assertion over small list of 5 elements.
% The issue is that fizzbuzz is of arity 0 and the task asked to solve fizzbuzz for the 1..100 range.

fizzbuzz() ->
    lists:map(
        fun(Number) -> 
           case Number of
                _FizzBuzz when Number rem 3 == 0 andalso Number rem 5 == 0 ->
                   'fizzbuzz';
                _Fizz when Number rem 3 == 0 ->
                   'fizz';
                _Buzz when Number rem 5 == 0 ->
                   'buzz';
                _Else -> Number
            end
        end,
        lists:seq(1,100)
    ).