(princ "1a:")
(princ ((lambda (list1 list2 list3)
            (cons (car list1) (cons (car list2) (cons (car list3) nil))))
'(PRIM SD FLAG () (GHG)) '(1 56 98 52) '(T 2 3 4 Y H)))
(terpri)
(princ "1b:")
(princ ((lambda (list1 list2 list3) 
        (list(car list1) (car list2) (car list3))) '(PRIM SD FLAG () (GHG)) '(1 56 98 52) '(T 2 3 4 Y H)))

(terpri)
(princ "2:")
(defun elements(list1 list2 list3 n1 n2 n3)
                (list(NTH (- n1 1) list1) (NTH (- n2 1) list2) (NTH (- n3 1) list3)))
(princ (elements '(PRIM SD FLAG () (GHG)) '(1 56 98 52) '(T 2 3 4 Y H) 5 3 2))
(terpri)
(princ "3:")
(defun differentresults(list1)
             (if (and
                    (atom
                       (car list1
                       )
                    )
                    (atom
                       (car
                          (last list1
                          )
                       )
                    ) 
                 )
                  
                    (list
                       (car list1) (car (last list1))
                    
                    )
                 
                     (append (list(car list1)) (cddr list1))
                 
              )
)
(princ (differentresults '( (M) N K L T)))
(terpri)
(princ(differentresults '(M N K L T)))
