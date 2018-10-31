; 1.1
;(define (factorial x)
;	(if (< x 2)
;		1
;		(* x (factorial (- x 1)))))

; 1.2
(define (factorial x) 
	(define (fact-iter a b)
		(if (< a 2)
			b
			(fact-iter (- a 1) (* b a))))
	(fact-iter x 1))
