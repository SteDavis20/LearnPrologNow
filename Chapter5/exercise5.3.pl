% Exercise  5.3 
% Write a predicate addone/2 whose first argument is a list of integers, and whose second
% argument is the list of integers obtained by adding 1 to each integer in the first list.
% For example: 
%               addone([1,2,7,2],X).
% should give:
%               X  =  [2,3,8,3].

addone([], []).
addone([H|T], [H2|T2]) :- H2 is H+1, addone(T, T2).