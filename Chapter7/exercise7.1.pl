% Exercise 7.1 
% Suppose we are working with the following DCG:

%   s  -->  foo,bar,wiggle.
%   foo  -->  [choo].
%   foo  -->  foo,foo.
%   bar  -->  mar,zar.
%   mar  -->  me,my.
%   me  -->  [i].
%   my  -->  [am].
%   zar  -->  blar,car.
%   blar  -->  [a].
%   car  -->  [train].
%   wiggle  -->  [toot].
%   wiggle  -->  wiggle,wiggle.

% Write down the ordinary Prolog rules that correspond to these DCG rules.
s(A, B) :- foo(A, C), bar(C, D), wiggle(D, B).
foo([choo|E], E).
foo(A, B) :- foo(A, C), foo(C, B).
bar(A, B) :- mar(A, C), zar(C, B).
mar(A, B) :- me(A, C), my(C, B).
me([i|W], W).
my([am|T], T).
zar(A, B) :- blar(A, C), car(C, B).
blar([a|W], W).
car([train|T], T).
wiggle([toot|R], R).
wiggle(A, B) :- wiggle(A, C), wiggle(C, B).

% What are the first three responses that Prolog gives to the query s(X,[]) ?
% Answers:
% 1) X = [choo, i, am, a, train, toot]
% 2) X = [choo, i, am, a, train, toot, toot]
% 3) X = [choo, i, am, a, train, toot, toot, toot] 