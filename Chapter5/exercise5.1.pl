% Exercise  5.1 
% How does Prolog respond to the following queries?

%   X  =  3*4.                  | X now refers to 3*4
%   X  is  3*4.                 | X = 12
%   4  is  X.                   | Instantiation_error, X is not defined
%   X  =  Y.                    | X refers to Y
%   3  is  1+2.                 | True
%   3  is  +(1,2).              | True
%   3  is  X+2.                 | Instantiation_error, X is not defined
%   X  is  1+2.                 | X = 3
%   1+2  is  1+2.               | FALSE SOMEHOW?
%   is(X,+(1,2)).               | X = 3
%   3+2  =  +(3,2).             | True
%   *(7,5)  =  7*5.             | True
%   *(7,+(3,2))  =  7*(3+2).    | True
%   *(7,(3+2))  =  7*(3+2).     | True
%   7*3+2  =  *(7,+(3,2)).      | False (BIMDAS)
%   *(7,(3+2))  =  7*(+(3,2)).  | True