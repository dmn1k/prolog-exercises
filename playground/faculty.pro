faculty(0, 1) :- !.
faculty(N, Erg) :- N1 is N - 1,
faculty(N1, Resterg),
Erg is N * Resterg.