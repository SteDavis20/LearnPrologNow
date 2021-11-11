% Exercise  6.1
% Let’s call a list doubled if it is made of two consecutive blocks of elements that are exactly
% the same. 

% For example: 
% [a,b,c,a,b,c] is doubled (it’s made up of [a,b,c] followed by [a,b,c] ) 
% and so is [foo,gubble,foo,gubble] . 

% On the other hand:
%                   [foo,gubble,foo] is not doubled. 

% Write a predicate doubled(List) which succeeds when List is a doubled list.

% don't need to define append/3 since it is built in to prolog so next 2 lines are unecessary, but
% I did them just for practice.
append([H|T], L2, [H|L3]) :- append(T, L2, L3).
append([], L, L).

doubled(List) :- append(X, X, List).