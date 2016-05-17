(in-package "USER")
     
(defun ex_1_3()
    (load "square.lsp")
    (set 'two_larger (subseq (sort '(4 3 5) #'>) 0 2))
    (* ( square (nth 0 two_larger) ) ( square (nth 1 two_larger) ) )
    )
