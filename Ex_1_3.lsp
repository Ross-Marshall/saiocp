(in-package "USER")

(defun ex_1_3(x y z)
    (load "square.lsp")
    (set 'two_larger (subseq (sort '(x y z) #'>) 0 2))
    (* ( square (nth 0 two_larger) ) ( square (nth 1 two_larger) ) )
    )
