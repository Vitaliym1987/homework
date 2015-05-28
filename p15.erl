-module(p08).
-export([replicate/2]).

replicate(L,Limit)->replicate(L,Acc,Limit).
replicate([],Acc,_)->Acc.
replicate([H|T],Acc,Step < 2)->replicate([H|T],[H|Acc],Step+1);
replicate([H|T],Acc,Step == 2)->replicate(T,[H|Acc],0+1).

P15 (**) Написать функцию­ репликатор всех элементов входящего списка:  
Пример: 
1> p15:replicate([a,b,c], 3). 
[a,a,a,b,b,b,c,c,c] 