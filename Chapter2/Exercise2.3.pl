word(determiner,a).
word(determiner,every).
word(noun,criminal).
word(noun,'big  kahuna  burger').
word(verb,eats).
word(verb,likes).

sentence(Word1,Word2,Word3,Word4,Word5):-
         word(determiner,Word1),
         word(noun,Word2),
         word(verb,Word3),
         word(determiner,Word4),
         word(noun,Word5).

% Q1: 
% What query do you have to pose in order to find out which
% sentences the grammar can generate? 
% 
% Q1 Answer:
% sentence(W1,W2,W3,W4,W5).
% 
% Q2: 
% List all sentences that
% this grammar can generate in the order that Prolog will
% generate them in.

% Q2 Answer: 
% a criminal eats a criminal
% a criminal eats a big kahuna burger
% a criminal eats every criminal
% a criminal eats every big kahuna burger
% a criminal likes a criminal
% a criminal likes a big kahuna burger
% a criminal likes every criminal
% a criminal likes every big kahuna burger
% a big kahuna burger eats a criminal
% a big kahuna burger eats a big kahuna burger
% a big kahuna burger eats every criminal
% a big kahuna burger eats every big kahuna burger
% a big kahuna burger likes a criminal
% a big kahuna burger likes a big kahuna burger
% a big kahuna burger likes every criminal
% a big kahuna burger likes every big kahuna burger
% ^^ same as above but replace "a" on LHS with every