-module(fibonacci_sum).

-export([fibonacci_sum/0, fibonacci_sum/4]).

fibonacci_sum() ->
    Limit = 4 * 1000 * 1000,
    fibonacci_sum(1, 1, 0, Limit)
.

% This is a pretty straight-forward solution.
% Had Ex1. solved by using tail recursion so wasn't that hard.
% If you check first version it was kind of full of unused variables.
% I noticed that it happens a lot and I've been using this approach in all solutions
% then I read the docs and basically it's 
% case Exp1 of  - and when Exp1 is evaluated it goes through pattern matching.
% That's why I replaced the unsed variales with evaluated values + using Guard for the bound

fibonacci_sum(Prev, Curr, Sum, Limit) ->
    Next = Curr + Prev,
    InBound = Curr =< Limit,
    io:format("Next number is: ~p~n", [Next]),
    case Curr rem 2 of
        0 when InBound -> 
            fibonacci_sum(Curr, Next, Sum+Curr, Limit);
        1 when InBound -> 
            fibonacci_sum(Curr, Next, Sum, Limit);
        _OutOfBound when Next > Limit -> Sum
    end    
.
