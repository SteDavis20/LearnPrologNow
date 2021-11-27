% Exercise 9.3
% Write a two-place predicate termtype(Term,Type) that takes a term and gives back the type(s) of that
% term (atom, number, constant, variable, and so on). 
% The types should be given back in the order of their generality. 
% The predicate should behave in the following way:

%   ?-  termtype(Vincent,variable).
%   yes
%   ?-  termtype(mia,X).
%   X  =  atom  ;
%   X  =  constant  ;
%   X  =  simple_term  ;
%   X  =  term  ;
%   no
%   ?-  termtype(dead(zed),X).
%   X  =  complex_term  ;
%   X  =  term  ;
%   no

termtype(Term, Type) :- .
