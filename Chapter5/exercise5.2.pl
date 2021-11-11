% Exercise  5.2

% a) Define a 2-place predicate increment that holds only when its second argument is an integer
% one larger than its first argument. 
% For example:  increment(4,5) should hold, but
%               increment(4,6) should not.

% b) Define a 3-place predicate sum that holds only when its third argument is the sum of the first
% two arguments.
% For example:  sum(4,5,9) should hold, but 
%               sum(4,6,12) should not.

% a) Solution
increment(X, Y) :- Y is X+1.

% b) Solution
sum(X, Y, Z) :- Z is X+Y.