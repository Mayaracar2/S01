10 INPUT "Digite sua primeira nota: "; nota1
20 INPUT "Digite sua segunda nota: "; nota2
30 LET media_final = (VAL(nota1) + VAL(nota2)) / 2

40 IF media_final > 60 THEN GOTO 100
50 IF media_final < 30 THEN GOTO 200
    
60 IF media_final <= 60 AND media_final > 30 THEN GOTO 65
65 INPUT "Digite a sua nota de recuperação (NP3): "; nota_rec
68 LET media_com_rec = media_final + VAL(nota_rec)
      
70 IF media_com_rec > 50 THEN PRINT "Aprovado pela NP3" ELSE PRINT "Reprovado pela NP3"
75 END

100 PRINT "Aprovado Direto!"
110 END

200 PRINT "Reprovado Direto!"
210 END
