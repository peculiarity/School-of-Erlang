-module(multiples).

-export([thousand_sum/0]).

thousand_sum() -> 
    lists:sum(
        lists:filter(
            fun(Number) -> Number rem 3 == 0 orelse Number rem 5 == 0 end,
            lists:seq(1,999)
        )
    ).
