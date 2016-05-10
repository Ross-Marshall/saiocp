(in-package "USER")

(load "square.lsp")

(defun square-root3 (x) 

    (defun good-enough? (guess)
        (<  (abs (- (square guess)  x  )) 0.001))

    (defun improve (guess)
        (average guess (/ x guess)))

    (defun average ( x y )
        ( / ( + x y ) 2.0))

    (defun sqrt-iter2 (guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter2 (improve guess) )))
    
    (sqrt-iter2 1.0))
