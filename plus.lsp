(in-package "USER")

(defun inc (x) (+ 1 x))

(defun dec (x) (- x 1))

(defun plus1 (a b)
   (if (= a 0)
       b   
       (inc (+ (dec a ) b))))

(defun plus2 (a b)
   (if (= a 0)
       b
       (+ (dec a) (inc b))))
