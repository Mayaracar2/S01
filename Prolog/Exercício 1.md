filho(HADES, CRONOS). filho(HADES, REIA).

dominio(HADES, SUBMUNDO).

divindade_olimpica(DEUS) :- filho(DEUS, CRONOS), (dominio(DEUS, CEU) ; dominio(DEUS, MAR) ; dominio(DEUS, SUBMUNDO)).

% Query: % ?- divindade_olimpica(X).
