% Exercise 3.4

% sample queries:
% greater_than(succ(succ(succ(0))), succ(0)) = true
% greater_than(succ(succ(0)), succ(succ(succ(0)))) = false

% Assuming positive numbers only
greater_than(_, 0).
greater_than(succ(X), succ(Y)) :- greater_than(X, Y).