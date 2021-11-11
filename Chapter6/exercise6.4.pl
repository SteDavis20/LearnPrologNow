% Exercise 6.4
% Write a predicate last(List,X) which is true only when List is a list that contains at
% least one element and X is the last element of that list.

% Do this in two different ways:

        % Define last/2 using the predicate rev/2 discussed in the text.
        % Define last/2 using recursion.

% 1) Using rev/2
appendAcc([H|T], A, R) :- appendAcc(T, [H|A], R).
appendAcc([], A, A).

reverse(List, ListReversed) :- appendAcc(List, [], ListReversed).

last(List, X) :- reverse(List, [X|_]).

% 2) Using recursion
last([_|ListTail], X) :- last(ListTail, X).
last([X], X).
