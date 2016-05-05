(in-package "USER")

(defun a-plus-abs-b (a b)
    (+ a (if (> b 0) b (* b -1 ))))
