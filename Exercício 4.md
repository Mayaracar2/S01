filho(HERMES, OCEANO). filho(HERMES, TETIS). filho(APOLO, OCEANO). filho(APOLO, TETIS). filho(TETIS, CAOS). filho(OCEANO, CAOS).

dominio(HERMES, FRONTEIRA). dominio(APOLO, SOL). dominio(APOLO, MUSICA).

habita(HERMES, FRONTEIRA). habita(APOLO, OLIMPO).

divindade_olimpica(DEUS) :- filho(DEUS, OCEANO), (dominio(DEUS, SOL) ; dominio(DEUS, MUSICA) ; dominio(DEUS, FRONTEIRA)).

deus_maior(DEUS) :- dominio(DEUS, X), dominio(DEUS, Y), habita(DEUS, OLIMPO), X = Y.

irmaos_germanos(A, B) :- filho(A, X), filho(A, Y), filho(B, X), filho(A, Y), X = Y , A = B.

ancestral(A, D) :- filho(D, A).

ancestral(A, D) :- filho(D, Z), ancestral(A, Z).

% Query: % ?- ancestral(CAOS, X).
