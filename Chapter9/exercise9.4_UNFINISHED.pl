% Exercise 9.4 
% Write a Prolog program that defines the predicate groundterm(Term) which tests whether or not Term is a
% ground term. 
% Ground terms are terms that don’t contain variables. 
% Here are examples of how the predicate should behave:

%   ?-  groundterm(X).
%   no
%   ?-  groundterm(french(bic_mac,le_bic_mac)).
%   yes
%   ?-  groundterm(french(whopper,X)).
%   no

