(defmacro inc (var)
  (list 'setq var (list '1+ var)))
(defmacro dec (var) (list 'setq var (list '- var 1)) )
(defmacro f (var) (list '+ var 1 ))
(defmacro f1 (var) (list '+ (elt var 0) (elt var 1)))
(defmacro app (fun alist)
  (cons fun alist)
  )
(defun 1-(x) (- 1 x))
(defmacro 1-!(x) (list 'setq x (list '1- x)))

(provide 'elu)















