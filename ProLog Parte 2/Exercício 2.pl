% Fatos: Disciplinas (disciplinas, créditos, area)
disciplina(base_de_programação, 3, fundamental).
disciplina(calculo, 7, matematica).
disciplina(controle_de_dados, 6, computacao).
disciplina(paradigmas, 4, computacao).
disciplina(banco_de_dados, 6, aplicacoes).
disciplina(redes, 4, aplicacoes).
disciplina(inteligencia_artificial, 8, computacao).
disciplina(compiladores, 6, computacao).
disciplina(teorema_dos_graficos, 6, matematica).
disciplina(controle_de_dados, 6, matematica).
disciplina(sistemas_operacionais, 6, computacao).
disciplina(projeto_integrador, 10, aplicacoes).

% Fatos: Pré-Requisitos (disciplina_principal, pre_requisito)
prerequisito(controle_de_dados, base_de_programação).
prerequisito(algoritmos, controle_de_dados).
prerequisito(banco_de_dados, base_de_programação).
prerequisito(inteligencia_artificial, algoritmos).
prerequisito(inteligencia_artificial, calculo).
prerequisito(compiladores, algoritmos).
prerequisito(compiladores, controle_de_dados).
prerequisito(sistemas_operacionais, controle_de_dados).
prerequisito(teorema_dos_graficos, calculo).
prerequisito(paradigmas, calculo).
prerequisito(projeto_integrador, banco_de_dados).
prerequisito(projeto_integrador, sistemas_operacionais).

% Fatos: Conhecimento de Alunos (aluno, disciplina_concluida)
concluiu(maria, base_de_programação).
concluiu(maria, calculo).
concluiu(maria, controle_de_dados).
concluiu(joao, base_de_programação).
concluiu(joao, controle_de_dados).
concluiu(joao, calculo).
concluiu(jose, base_de_programação).
concluiu(jose, redes).
concluiu(jose, teorema_dos_graficos).
concluiu(paulo, calculo).
concluiu(paulo, paradigmas).
concluiu(paulo, teorema_dos_graficos).
concluiu(rogerio, controle_de_dados).
concluiu(rogerio, algoritmos).
concluiu(rogerio, redes). 

falta_concluir(Aluno, Disciplina) :-

    prerequisito(_, Disciplina),
    
    \+ concluiu(Aluno, Disciplina).

aluno_apto(Aluno, Disciplina) :-

    disciplina(Disciplina, _, Area),
    
    Area \= fundamental,
    
    \+ (prerequisito(Disciplina, PreReq),
    
        \+ concluiu(Aluno, PreReq)).

% Query % ?- aluno_apto(joao, D).

% Query % ?- aluno_apto(maria, inteligencia_artificial).
