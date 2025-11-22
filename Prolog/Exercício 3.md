filho(APOLO, HIPERON). filho(APOLO, TEIA). filho(ARTEMIS, HIPERON). filho(ARTEMIS, TEIA).

dominio(APOLO, LUZ). dominio(ARTEMIS, FLORESTA). dominio(ARTEMIS, LUA).

habita(APOLO, OLIMPO). habita(ARTEMIS, MONTANHA).

divindade_olimpica(DEUS) :- filho(DEUS, HIPERON), (dominio(DEUS, LUZ) ; dominio(DEUS, FLORESTA) ; dominio(DEUS, LUA)).

deus_maior(DEUS) :- dominio(DEUS, X), dominio(DEUS, Y), habita(DEUS, OLIMPO), X = Y.

irmaos_germanos(A, B) :- filho(A, X), filho(A, Y), filho(B, X), filho(A, Y), X = Y , A = B.

% Query: % ?- irmaos_germanos(APOLO, X).
