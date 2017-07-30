/* Fakten */
mitglied(schubert,klaus,m,1962,fussball).
mitglied(berger,ursel,w,1968,badminton).
mitglied(meier,egon,m,1955,fussball).
mitglied(mueller,iris,w,1963,badminton).
mitglied(dolittle,elisa,w,1968,badminton).
beitrag(hockey,30.50).
beitrag(fussball,42.30).
beitrag(badminton,10).

/* Regeln */
spielpaarung(Sportart, Name1, Vorn1, Name2, Vorn2) :-
mitglied(Name1,Vorn1,_,_,Sportart),
mitglied(Name2,Vorn2,_,_,Sportart),
Name1 \= Name2.

alter(Name, Vorname) :-
mitglied(Name,Vorname,_,Geb_jahr,_),
date(Jahr,_,_),
Erg is Jahr-Geb_jahr,
write(Erg).

beitraege :- mitglied(N,V,_,_,S),
beitrag(S,G),
write(N),nl,
write(V),nl, 
write(G),fail.