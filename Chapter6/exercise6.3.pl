% Exercise 6.3
% Write a predicate toptail(InList,OutList) which says no if InList is a list containing fewer
% than 2 elements, and which deletes the first and the last elements of InList and returns the
% result as OutList , when InList is a list containing at least 2 elements.

% For example:

%           toptail([a],T).
%           no
   
%           toptail([a,b],T).
%           T=[]
   
%           toptail([a,b,c],T).
%           T=[b]

% (Hint: here’s where append/3 comes in useful.)

append([H|T], L2, [H|L3]) :- append(T, L2, L3).
append([], L, L).

toptail(InList, OutList) :- .

% Without using append
% E.g., [a, b, c, d, e, f]      _ = a, where _ = H
% [b, c, d, e, f]               InListTail
% [f, e, d, c, b]               [_|reversedTail]
% [e, d, c, b]                  [reversedTail]
% [b, c, d, e]                  OutList

appendAcc([H|T], A, R) :- (T, [H|A], R). 
appendAcc([], A, A).

reverse(L, LReversed) :- appendAcc(L, [], LReversed).

toptail([_|InListTail], OutList) :- reverse(InListTail, [_|reversedTail]), 
                                    reverse(reversedTail, OutList).