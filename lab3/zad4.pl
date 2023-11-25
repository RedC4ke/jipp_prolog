dlugosc([]).
dlugosc(_|H, Dlugosc) :-
	dlugosc(H, X),
	Dlugosc is X + 1.
	