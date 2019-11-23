-module(fizzbuzz).

-export([fizzbuzz/0]).

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