10 input "Digite a primeira nota: "; nota1
20 input "Digite a segunda nota: "; nota2

30 soma = nota1 + nota2
40 media = soma / 2

50 if media > 60 then goto 200
60 if media < 30 then goto 210
70 if media <60 and media >30 then goto 100 

100 input "Digite a nota da NP3: "; nota3
110 novaMedia = (soma + nota3) / 2
120 if novaMedia > 50 then goto 240
130 goto 260

200 print "Aprovado direto" 
210 end
220 print "Reprovado direto" 
230 end    
240 print "Aprovado pela NP3" 
250 end
260 print "Reprovado na NP3" 
300 end
