-module(multiples).

-export([thousand_sum/0]).


% The description of the task and one of the tip differs a little bit.
% You suggest to generate a seq from 1..1000 which is wrong because
% it's inclusive range where both 1 and 1000 will participate
% The task asks for the sum of all numbers divisible of 3 and 5 BELOW 1000
thousand_sum() -> 
    lists:sum(
        lists:filter(
            fun(Number) -> Number rem 3 == 0 orelse Number rem 5 == 0 end,
            lists:seq(1,999)
        )
    ).
