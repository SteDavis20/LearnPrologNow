% gets size (or length) of the list
list([],0).
list([_|T], s(C)) :- list(T, C). % C stands for count