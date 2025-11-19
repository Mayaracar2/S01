
(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(setq catalogo
      (list
       (make-criatura :nome "Peixe Safe Shallows"
                      :ambiente "Safe Shallows"
                      :periculosidade "Baixa"
                      :vida-media 5)

       (make-criatura :nome "Reaper Leviathan"
                      :ambiente "Deep"
                      :periculosidade "Alta"
                      :vida-media 50)

       (make-criatura :nome "Blighter"
                      :ambiente "Deep"
                      :periculosidade "Média"
                      :vida-media 30)

       (make-criatura :nome "Frost Serpent"
                      :ambiente "Deep"
                      :periculosidade "Alta"
                      :vida-media 80)))


(defun filtra-por-perigo (catalogo)
  (let ((resultado
         (remove-if (lambda (c)
                      (string-equal (criatura-periculosidade c) "Baixa"))
                    catalogo)))
    (format t "~%Criaturas perigosas (não-baixa):~%")
    (dolist (c resultado)
      (format t " - ~a (~a)~%"
              (criatura-nome c)
              (criatura-periculosidade c)))
    resultado))


(defun relatorio-profundidade (catalogo)
  (let ((deep-only
         (remove-if-not (lambda (c)
                          (string-equal (criatura-ambiente c) "Deep"))
                        catalogo)))
    (format t "~%Relatório: Criaturas do ambiente Deep:~%")
    (mapcar (lambda (c)
              (let ((linha (format nil "~a: Vive em ~a"
                                   (criatura-nome c)
                                   (criatura-ambiente c))))
                (format t "~a~%" linha)
                linha))
            deep-only)))

(filtra-por-perigo catalogo)
(relatorio-profundidade catalogo)
