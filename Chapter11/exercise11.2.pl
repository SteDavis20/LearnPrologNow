% Exercise 11.2
% Suppose we have the following database:

q(blob,blug).
q(blob,blag).
q(blob,blig).
q(blaf,blag).
q(dang,dong).
q(dang,blug).
q(flab,blob).

% What is Prolog’s response to the queries:

% -------------------------------------------------------------------------------------------------------

% ?- findall(X, q(blob, X), List).
% List = [blug, blag, blig]

% -------------------------------------------------------------------------------------------------------

% ?- findall(X, q(X, blug), List).
% List = [blob, dang]

% -------------------------------------------------------------------------------------------------------

% Remember, findall includes duplicates
% ?- findall(X, q(X, Y), List).
% List = [blob, blob, blob, blaf, dang, dang, flab]

% -------------------------------------------------------------------------------------------------------

% Remember, bagof only returns the list for one X at a time, does not return all solutions
% The solutions are returned in alphabetical order, i.e., if Y can be andy or bobby it will return andy,
% regardless of whether bobby comes before andy in the database.

% ?- bagof(X, q(X, Y), List).
% List = [blob, blaf]
% Y = blag

% If you keep clicking Next, you will get:

% List = [blob]
% Y = blig

% List = [flab]
% Y = blob

% List = [blob, dang]
% Y = blug

% List = [dang]
% Y = dong

% -------------------------------------------------------------------------------------------------------

% Remember, setof is the same as bagof, except the list is ordered
% ?- setof(X, Y^q(X, Y), List).
% List = [blaf, blob, dang, flab]

% -------------------------------------------------------------------------------------------------------