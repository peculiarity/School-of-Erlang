-module(fibonacci_sum).

-export([fibonacci_sum/0, fibonacci_sum/4]).

fibonacci_sum() ->
    Limit = 4 * 1000 * 1000,
    fibonacci_sum(1, 1, 0, Limit)
.

% This is a pretty straight-forward solution.
% Had Ex1. solved by using tail recursion so wasn't that hard.

fibonacci_sum(Prev, Curr, Sum, Limit) ->
    Next = Curr + Prev,
    io:format("Next number is: ~p~n", [Next]),
    case Curr of
        _Even when Curr =< Limit andalso Curr rem 2 == 0 -> 
            fibonacci_sum(Curr, Next, Sum+Curr, Limit);
        _Odd when Curr =< Limit andalso Curr rem 2 == 1 -> 
            fibonacci_sum(Curr, Next, Sum, Limit);
        _OutOfBound when Next > Limit -> Sum
    end    
.
