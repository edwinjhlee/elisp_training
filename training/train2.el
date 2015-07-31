(add-to-list 'load-path ".")
(require 'elu)
elu

(defun split2(v)
  ""
  (let ((len (length v))
	(i 0) (prev 0) (cur 0) (bool 0)
	(ret (list)))
    (progn
      (while (< i len)
	(setq cur (pop v))
;	(message "%d" cur)
	(1-! bool)
	(inc i)
	(if (= bool 1)
	    (setq prev cur)
	    (setq ret (append ret (list (list prev cur))))
	    )
        )
      ret
      )
     )
  )
split2

(split2 (list 1 2 3 4))
((1 2) (3 4))

(let ((x 0))
  (setq x 1)
  (inc x)
  (setq x (+ x 3))
  (message "%d" x)
  )
"5"




























