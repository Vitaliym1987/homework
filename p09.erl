-module(p09).
-export([pack/1]).

pack([H|T])-> 
	repack([H|T],[],[],[]).

repack([],_,_,Acc)
	->Acc;

repack([H|T],Tmp,Var == [],Acc) 
	->repack(T,[H|Tmp],H,[]);

repack([H|T],Tmp,Var /= H,Acc) -> 
	repack([H|T],[],[],[Tmp|Acc]);

%%5P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки:  
%%Пример: 
%%1> p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]). 
%%[[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]  
