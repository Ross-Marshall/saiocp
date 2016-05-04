(in-package "USER")

(defun cond_test (a b) 
    ( cond (( = a 4 ) 6 )
           (( = b 4 ) ( + 6 7 a ))
           (else 25))
    )
