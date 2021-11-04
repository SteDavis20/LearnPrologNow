% How does prolog respond to the following queries?

% [a,b,c,d]  =  [a,[b,c,d]].    false
% [a,b,c,d]  =  [a|[b,c,d]].    TRUE!!!
% [a,b,c,d]  =  [a,b,[c,d]].    false
% [a,b,c,d]  =  [a,b|[c,d]].    TRUE!!!
% [a,b,c,d]  =  [a,b,c,[d]].    FALSE!!!
% [a,b,c,d]  =  [a,b,c|[d]].    true
% [a,b,c,d]  =  [a,b,c,d,[]].   false
% [a,b,c,d]  =  [a,b,c,d|[]].   TRUE!!!
% []  =  _.                     TRUE!!!
% []  =  [_].                   false
% []  =  [_|[]].                false