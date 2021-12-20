% Exercise 10.3
% Without using cut, write a predicate split/3 that splits a list of integers into two lists:
%   one containing the positive ones (and zero), 
%   the other containing the negative ones. 

% For example:

%           split([3,4,-5,-1,0,4,-9],P,N)

% should return:

%           P  =  [3,4,0,4]
   
%           N  =  [-5,-1,-9].

% Part 1 Solution:
split([H|T], P, N) :- H >= 0, append(H, P, P2),
                      split(T, P2, N).
                      
split([H|T], P, N) :- H < 0, append(H, N, N2),
                      split(T, P, N2).

% Then improve this program, without changing its meaning, with the help of the cut.

