zweihoch(0,1) :- !.
zweihoch(N, Erg) :- N1 is N-1,
    zweihoch(N1, Resterg),
    Erg is 2*Resterg.