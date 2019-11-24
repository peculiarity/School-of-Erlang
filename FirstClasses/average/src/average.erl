-module(average).

-export([average/1, average_norec/1, average_foldl/1]).

average(List) ->
    case List of 
        [] -> 0;
        _List -> reduce(0, List)/length(List)
    end.

% Problems I encountered:
% 1. Used to write variable with lowercase
%    and since in erlang that is atom I had runtime errors.
%    had to rename from `acc` to `Acc`
% 2. `case` should end with `end` keyword.
%    It's written in the docs but I guess I skipped it
% 3. Had hard time to wrap my head around the Pattern / Guard thing.
%    Had some experience with Scala but long time ago.
reduce(Acc, [H|T]) ->
    case T of
        _List when length(T) > 0 -> 
            reduce(Acc + H, T);
        [] ->
            Acc + H
        end.


% After spending some time clicking in the documentation
% I saw that there is actually a function lists:sum
% that does the trick ( haven't checked internally how it's implemented though )

average_norec(List) ->
    case List of
        [] -> 0;
        _List -> lists:sum(List)/length(List)
    end.

% Continued reading the docs and found out there is the list:foldl
% which does same thing as reduce I wrote but in a more generic way for lists
average_foldl(List) ->
    case List of
        [] -> 0;
        _List -> lists:foldl(
            fun(SeqNum, Acc) -> Acc + SeqNum end,
            0,
            List
        )/length(List)
    end.