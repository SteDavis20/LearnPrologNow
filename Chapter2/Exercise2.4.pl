word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

% Write predicate crossword/6 that tells us how to fill in the crossword grid as on LPN Website.

% Answer
crossword(A,B,C,D,E,F) :- word(), word(), word(), word(), word(), word().