% Exercise 11.1 

% Note:
% When testing with swish prolog online, the assert predicates are not saved.
% To test solutions, include the assert predicates with the query.
% Example:
% listing(q) should return our asserted rules in the database, but it won't.
% But 'assert(q(a,b)),  assertz(q(1,2)),  asserta(q(foo,blug)), listing(q).' will return the database.

% -------------------------------------------------------------------------------------------------------

% Suppose we start with an empty database. 

% We then give the command:
%   assert(q(a,b)),  assertz(q(1,2)),  asserta(q(foo,blug)).
% What does the database now contain?

% don't forget to include:
% :- dynamic q/2
% As the first line in your knowledge base!
q(foo,blug).
q(a,b).
q(1,2).

% To test solution, give the following query to swish prolog:
% ?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)), listing(q).

% -------------------------------------------------------------------------------------------------------

% We then give the command:

%   retract(q(1,2)),  assertz(  (p(X)  :-    h(X))  ).
% What does the database now contain?

% don't forget to include:
% :- dynamic q/2
% :- dynamic p/1
% As the first 2 lines in your knowledge base!

q(foo,blug).
q(a,b).
p(X) :- h(X).

% To test solution, give the following query to swish prolog:
% ?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)), retract(q(1,2)), assertz( (p(X) :- h(X)) ), 
%    listing(q), listing(p).

% -------------------------------------------------------------------------------------------------------

% We then give the command:

%   retractall(q(_,_)).
% What does the database now contain?

% don't forget to include:
% :- dynamic q/2
% :- dynamic p/1
% As the first 2 lines in your knowledge base!

p(X) :- h(X).

% To test solution, give the following query to swish prolog:
% ?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)), retract(q(1,2)), assertz( (p(X) :- h(X)) ), 
%    retractall(q(_,_)), listing(q), listing(p).

% -------------------------------------------------------------------------------------------------------