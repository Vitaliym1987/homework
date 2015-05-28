-module(p06).
-export([is_palindrome/1]).

is_palindrome([])->true;
is_palindrome(X)-> 
	X =:= reverse(X).



reverse([])->reverse([]);
reverse([H|T])-> reverse(T)++[H].







%%P06 (*) Определить, является ли список палиндромом:  
%%Пример: 
%%1> p06:is_palindrome([1,2,3,2,1]). 
%%true
	




