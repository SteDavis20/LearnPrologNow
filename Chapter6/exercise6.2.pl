% Exercise 6.2
% A palindrome is a word or phrase that spells the same forwards and backwards.

% For example: 
% ‘rotator’, ‘eve’, and ‘nurses run’ are all palindromes.

% Write a predicate palindrome(List) , which checks whether List is a palindrome.

% For example:

%   ?-  palindrome([r,o,t,a,t,o,r]).
% and

%   ?-  palindrome([n,u,r,s,e,s,r,u,n]).
% Prolog should respond yes, but to the query

%   ?-  palindrome([n,o,t,h,i,s]).
% it should respond no.

% nothis,       [],         A
% H = n,        T = othis   []
% H = o         T = this    [n]
% H = t         T = his     [tn]

accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).

revList(List, Reversed) :- accRev(List, [], Reversed).


palindrome(List) :- revList(List, List).