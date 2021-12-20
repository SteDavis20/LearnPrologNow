% Exercise 10.1
% Suppose we have the following database:

%   p(1).
%   p(2)  :-  !.
%   p(3).

% Write all of Prolog’s answers to the following queries:

% 1)  ?-  p(X).           
% 2)  ?-  p(X), p(Y).      
% 3)  ?-  p(X), !,p(Y).

% 1) 
% X = 1 
% X = 2

% 2)
% X = 1, Y = 1, output is technically: X = Y, Y = 1
% X = 1, Y = 2
% X = 2, Y = 1
% X = 2, Y = 2, output is technically: X = Y, Y = 2

% 3) 
% X = 1, Y = 1, output is technically: X = Y, Y = 1
% X = 1, Y = 2
% no more solutions because the cut (!) in our query, binds (or commits) p(X) = p(1)
% and we cannot use any other rule for p(X).