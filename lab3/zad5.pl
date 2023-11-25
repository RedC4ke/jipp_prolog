polacz([], L2, L2).
polacz([H|Y], Lista2, [H,B]) :-
	polacz(Y, Lista2, B).