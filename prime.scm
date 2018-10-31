(define (square x) (* x x))

(define (divides? x y)
		(= (remainder x y) 0))

(define (prime? x)
	(define (find-divisor n t)
		(cond ((> (square t) n) n)
			  ((divides? n t) t)
			  (else (find-divisor n (+ t 1)))))
	(define (smallest-divisor n)
		(find-divisor n 2))
	(= x (smallest-divisor x)))
