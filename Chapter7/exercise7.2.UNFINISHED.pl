% Exercise 7.2
% The formal language (a^n)(b^n) −{ ϵ } consists of all the strings in (a^n)(b^n) except the empty
% string.

% Write a DCG that generates this language.

s --> [].
s --> [a], s, [b].

% [a,a,a,b,b,b]
% s --> [a], s, [b]
% s means consume [a,a,a,b,b,b] and leave behind []
% [a] means consume [a] and leave behind the rest, i.e., [a,a,b,b,b], pass this into next s call
% s means consmume [a,a,b,b,b] etc.