% Write a predicate listtran(G,E) which translates a list of German number words to the
% corresponding list of English number words. 

% For example:

%               listtran([eins,neun,zwei],X).

%               should give:
%               X  =  [one,nine,two].

% Your program should also work in the other direction. For example, if you give it the query:

%               listtran(X,[one,seven,six,two]).

%               it should return:
%               X  =  [eins,sieben,sechs,zwei].

% given:
tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran([HG|TG], [HE|TE]) :- tran(HG, HE), listtran(TG, TE).