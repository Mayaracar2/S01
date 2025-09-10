10 numero_sorteado = INT(RND * 40)   
30 INPUT "Digite seu palpite (Dica: está entre 0 e 40): "; tentativa

40 IF tentativa = numero_sorteado THEN GOTO 100
50 IF tentativa < numero_sorteado THEN PRINT "O número correto é maior que " + tentativa 
55 GOTO 30
60 IF tentativa > numero_sorteado THEN PRINT "O número correto é menor que " + tentativa
70 GOTO 30

100 PRINT "Isso aí! Você acertou o número"
110 END
