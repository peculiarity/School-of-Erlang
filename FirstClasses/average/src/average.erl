-module(average).

-export([average/1, average_norec/1, average_foldl/1]).

average(List) ->
    case List of 
        [] -> 0;
        _List -> reduce(0, List)/length(List)
    end.

reduce(Acc, [H|T]) -> reduce(Acc + H, T);
reduce(Acc, []) -> Acc.


% After spending some time clicking in the documentation
% I saw that there is actually a function lists:sum
% that does the trick ( haven't checked internally how it's implemented though )

average_norec(List) ->lists:sum(List)/length(List).

% Continued reading the docs and found out there is the list:foldl
% which does same thing as reduce I wrote but in a more generic way for lists
average_foldl(List) ->lists:foldl(
            fun(SeqNum, Acc) -> Acc + SeqNum end,
            0,
            List
        )/length(List).