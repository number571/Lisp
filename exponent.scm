; 3.1
;(define (exponent x y)
;	(if (= y 0)
;		1
;		(* x (exponent x (- y 1)))))

; 3.2
;(define (exponent x y)
;	(define (exp-iter a b n)
;		(if (= b 0) 
;			n
;			(exp-iter a (- b 1) (* n a))))
;	(exp-iter x y 1))

; 3.3
(define (exponent x y)
	(define (square x) (* x x))
	(cond ((= y 0) 1)
		  ((even? y) (square (exponent x (/ y 2))))
		  (else (* x (exponent x (- y 1))))))
