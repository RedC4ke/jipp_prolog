pisz_liste([])
pisz_liste([H|T]) :-
	write(H),
	write(' '),
	pisz_liste(H).