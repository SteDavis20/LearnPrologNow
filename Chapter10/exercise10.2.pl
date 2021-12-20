% Exercise 10.2
% First, explain what the following program does:

%   class(Number,positive)  :-  Number  >  0.
%   class(0,zero).
%   class(Number,negative)  :-  Number  <  0.

% Explanation:
% This program takes one argument, or input, namely "Number", and returns one of 3 possibilities, each being an atom:
%   positive, if the Number is greater than 0.
%   zero, if the Number is 0.
%   negative, if the Number is less than 0.
% After finding the first solution, the program can then backtrack and check if there is another solution, i.e., if
% the Number passes the positive test, the program can then check if the Number passes the zero test, and/or the
% negative test.

% Second, improve it by adding green cuts.

class(Number,positive)  :-  Number  >  0, !.
class(0,zero) :- !.
class(Number,negative)  :-  Number  <  0, !.

% The improvement here is that once a Number passes one test, it cannot be tested under a different test, and
% this is more efficient because a Number can only pass one test by defintion.
% The key functionality of the cut (!) is that it commits the Number variable to the current rule.
% Note, the cut (!) in the first and last rule, will only be executed if the previous predicate passes, i.e., if
% Number > 0 is false in test 1, the cut will not be executed.