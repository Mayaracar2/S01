filho(APOLO, ZEUS). filho(ARTEMIS, ZEUS). filho(HERMES, ZEUS). filho(HERACLES, ZEUS).

dominio(APOLO, SOL). dominio(ARTEMIS, LUA). dominio(HERMES, COMERCIO).

habita(APOLO, OLIMPO). habita(ARTEMIS, FLORESTA).

divindade_olimpica(DEUS) :- filho(DEUS, ZEUS), (dominio(DEUS, SOL) ; dominio(DEUS, LUA) ; dominio(DEUS, COMERCIO)).

deus_maior(Deus) :- dominio(DEUS, X), dominio(DEUS, Y), habita(DEUS, OLIMPO), X = Y.

% Query: % ?- deus_maior(X).
