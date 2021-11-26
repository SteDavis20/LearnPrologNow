% Exercise 8.2
% In the text, we only gave examples of DCG rules with one extra argument, but in fact you can add as
% many extra arguments as you like. 
% Here’s a DCG rule with three extra arguments:

%   kanga(V,R,Q)  -->  roo(V,R),jumps(Q,Q),{marsupial(V,R,Q)}.

% Translate it into the form Prolog uses (include hidden difference lists), not DCG form but Prolog :- form.

kanga(V, R, Q, A, B) :- roo(V, R, A, C),
                         jumps(Q, Q, C, B),
                         marsupial(V, R, Q).