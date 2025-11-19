
(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista)
  (if (null lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))

(defun analise-final (lista)
  (let* ((soma (soma-medo-recursiva lista))
         (qtd (length lista))
         (media (/ soma qtd)))
    (format t "Soma total do nível de medo: ~a~%" soma)
    (format t "Quantidade de ocorrências: ~a~%" qtd)
    (format t "Média do nível de medo: ~a~%" media)
    (let ((criticas
           (remove-if-not
            (lambda (o)
              (and (> (ocorrencia-agentes-enviados o) 3)
                   (> (ocorrencia-nivel-medo o) media)))
            lista)))
      (format t "~%Ocorrências críticas detectadas:~%")
      (dolist (o criticas)
        (format t " - ~a (Medo: ~a, Agentes: ~a)~%"
                (ocorrencia-nome o)
                (ocorrencia-nivel-medo o)
                (ocorrencia-agentes-enviados o)))
      (mapcar (lambda (o)
                (format t "Registrando crítica: ~a~%" (ocorrencia-nome o))
                (ocorrencia-nome o))
              criticas))))

(setq lista-oc
      (list
       (make-ocorrencia :nome "Ídolo da Vigília"
                        :ritual "Invocação"
                        :nivel-medo 40
                        :agentes-enviados 2)
       
       (make-ocorrencia :nome "Eco no Sanatório"
                        :ritual "Manifestação"
                        :nivel-medo 90
                        :agentes-enviados 5)
       
       (make-ocorrencia :nome "Passagem Murmurante"
                        :ritual "Murmúrio"
                        :nivel-medo 70
                        :agentes-enviados 4)

       (make-ocorrencia :nome "Bosque Enublado"
                        :ritual "Assombração"
                        :nivel-medo 55
                        :agentes-enviados 3)

       (make-ocorrencia :nome "Câmara Revertida"
                        :ritual "Ruptura"
                        :nivel-medo 120
                        :agentes-enviados 6)))

(format t "~%Resultado final: ~a~%"
        (analise-final lista-oc))
