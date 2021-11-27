% Exercise  9.1 
% Which of the following queries succeed, and which fail?
% 
% 3 =:= 1*3 means when 1*3 is evaluated, is it == 3? 
% 
% 12  is  2*6.							true
% 14  =\=  2*6.							true
% 14  =  2*7.							false
% 14  ==  2*7.   						false
% 14  \==  2*7.   						true
% 14  =:=  2*7.   						true
% [1,2,3|[d,e]]  ==  [1,2,3,d,e]. 		true
% 2+3  ==  3+2.   						false
% 2+3  =:=  3+2.   						true
% 7-2  =\=  9-2.   						true
% p  ==  'p'.   						true
% p  =\=  'p'.   						fails, ERROR produced
% vincent  ==  VAR.   					false
% vincent=VAR,  VAR==vincent.			true, VAR = vincent