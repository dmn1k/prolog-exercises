ver([], L, L).
ver([X|R1], L2, [X|R3]) :- ver(R1, L2, R3).