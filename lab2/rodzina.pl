rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzys).
rodzic(krzys, mikolaj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mezczyzna(andrzej).
mezczyzna(marcin).
mezczyzna(krzys).
mezczyzna(mikolaj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).
szczesliwy(X) :-
	rodzic(X, Y),
	potomek(Y, X).
dwoje_dzieci(X) :-
	rodzic(X, Y),
	siostra(Y, Z), 
	kobieta(Z).
wnuk(Z,X) :-
	rodzic(X,Y),
	rodzic(Y,Z).
ciotka(X,Y) :-
	rodzic(Z,Y),
	siostra(X,Z),
	kobieta(X).
nastepca(X,Y) :-
	potomek(X,Z),
	nastepca(Z,Y).
