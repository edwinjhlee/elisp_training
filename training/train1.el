(setq x1 123)
123
(symbolp x1)
nil
(setq x2 'xx)
xx
(symbolp x2)
t
(symbol-name 'x1)
"x1"
(symbol-value 'x1)
123
(symbol-value 'x2)
xx
(symbolp (symbol-value 'x2))
t
(symbol-function 'setq)
#<subr setq>
(symbol-plist 'setq)
nil

(defmacro inc (var)
  (list 'setq var (list '1+ var)))
inc
(setq a 1)
1
(inc a)
2
(defmacro dec (var) (list 'setq var (list '- var 1)) )
dec
(dec a)
-1
(let ((x 0) (y 1))
     (+ x y))
1

(setq a 3)
3
(defmacro f (var) (list '+ var 1 ))
f
(f a)
4
(defmacro f1 (var) (list '+ (elt var 0) (elt var 1)))
f1

(f1 [3 4])
7
(let ((a 1) (b 2))
     (f1 [a b]))
3

(eval '(+ 3 4 ))
7

(defmacro apply (fun alist)
  (list 'eval (append fun alist))
  )
apply

apply

apply

apply
y
(apply + (1 2 3))


















	  

	 































