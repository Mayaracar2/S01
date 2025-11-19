(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 5) (< peso 20)) 10)
    ((and (>= idade 5) (<= idade 12) (>= peso 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-erva)
  (cond
    ((string-equal nome-erva "Ginseng") (* preco-base 3.0))
    ((string-equal nome-erva "Lótus") (* preco-base 1.5))
    (t preco-base)))

(defun preco-final (preco-base nome-erva peso idade)
  (let* ((dose (calcula-dosagem peso idade))
         (preco-ajust (ajusta-preco preco-base nome-erva))
         (total (* dose preco-ajust)))
    (format t "Dose aplicada: ~a ml~%" dose)
    (format t "Preço ajustado da erva: ~a moedas~%" preco-ajust)
    (format t "Preço final: ~a moedas~%~%" total)
    total))

(preco-final 10 "Lótus" 60 14)
(preco-final 10 "Ginseng" 10 3)
(preco-final 10 "Lótus" 25 8)
(preco-final 10 "Hortelã" 15 25)
