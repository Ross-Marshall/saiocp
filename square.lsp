(in-package "USER")

(defun square (x) (* x x ))

(square 21)

(square (+ 2 5))

(square (square 3))

(defun sum-of-squares (x y) ( + (square x) (square y) ) )

(sum-of-squares 3 4)

(defun f (a) ( sum-of-squares ( + a 1 ) ( * a 2 )))

(f 5)
