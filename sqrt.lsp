(in-package "USER")

(load "square.lsp")

(defun sqrt-iter (guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(defun improve (guess x)
    (average guess (/ x guess)))

(defun average ( x y )
    ( / ( + x y ) 2.0))

(defun good-enough? (guess x)
    (<  (abs (- (square guess)  x  )) 0.001))

(defun square-root (x) 
    (sqrt-iter 1.0 x))

(defun new-if (predicate then-clause else-clause )
    ( cond ( predicate then-clause) 
             (else-clause) ))

(defun sqrt-iter2 (guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter2 (improve guess x)
                   x) ))

(defun square-root2 (x) 
    (sqrt-iter2 1.0 x))
