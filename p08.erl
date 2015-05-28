-module(p08).
-export([compress/1,compress/2]).

compress(L) -> compress(L,[]).

compress([],Acc) -> 
	Acc;

compress([H|T],Acc) ->
	compress(T, Acc);

compress([H|T],Acc) -> 
	compress(T, [H|Acc]).
	






