% Exercise 11.3

% Note:
% You could use the mathematical formula SumOfN = (N * (FirstElem+LastElem)) / 2
% E.g. Sum of 5 = (5 * (1 + 5)) / 2
%               = (5 * 6) / 2
%               = 30 / 2
%               = 15
%     5+4+3+2+1 = 15
%            15 = 15

% However, for learning purposes, it is better to do this a different way.

% Write a predicate sigma/2 that takes an integer n > 0 and calculates the sum of all integers from 1 to n.
% For example:

%   ?-  sigma(3,X).
%   X  =  6
%   yes
%   ?-  sigma(5,X).
%   X  =  15
%   yes

savedSums(0, 0).
sigma(N, Sum) :- savedSums(N, Sum).         % crucial to have this line before the following line.
sigma(N, Sum) :- N > 0, NMinus1 is (N-1), sigma(NMinus1, SumExcludingN), Sum is (SumExcludingN + N),
                 assert(savedSums(N, Sum)).

% Write the predicate so that results are stored in the database (there should never be more than one entry in the
% database for each value) and are reused whenever possible.
% For example, suppose we make the following query:

%   ?-  sigma(2,X).
%   X  =  3
%   yes
%   ?-  listing.
%   sigmares(2,3).

% Then, if we go on to ask

%   ?-  sigma(3,X).

% Prolog should not calculate everything new, but should get the result for sigma(2,3) from the database and only
% add 3 to that.

% It should then answer:

%   X  =  6
%   yes
%   ?-  listing.
%   sigmares(2,3).
%   sigmares(3,6).