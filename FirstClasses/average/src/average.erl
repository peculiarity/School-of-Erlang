-module(average).

-export([average/1, reduce/2]).

% That was tricky one but figured it out even before compilation
% If the List empty then we can't divide on 0
average(List) ->
    case List of 
        [] -> 0;
        _List -> reduce(0, List)/length(List)
    end.

% Problems that I have encountered:
% 1. Used to write variable with lowercase
%    and since in erlang that is atom I had runtime errors.
%    had to rename from `acc` to `Acc`
% 2. `case` should end with `end` keyword.
%    It's written in the docs but I guys I have skipepd it
% 3. Have hard time to grasp the Pattern / Guard thing.
%    Had some experience with Scala but long time ago.
%    Will some practice
reduce(Acc, [H|T]) ->
    case T of
        _List when length(T) > 0 -> 
            reduce(Acc + H, T);
        [] ->
            Acc + H
        end.
