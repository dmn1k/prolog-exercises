entfernen(_, [], []).

entfernen(Wort,Liste,Ergliste) :-
    Liste=[Wort|Restliste],
    entfernen(Wort, Restliste, Ergliste).

entfernen(Wort,Liste,Ergliste) :-
    Liste=[Kopf|Restliste],
    Wort \= Kopf,
    Ergliste=[Kopf|Ergrest],
    entfernen(Wort,Restliste,Ergrest).