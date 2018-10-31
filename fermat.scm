(define (square x) (* x x))

(define (expmod base e m)
	(cond 
		((= e 0) 1)
		((even? e) (remainder (square (expmod base (/ e 2) m))
		  	m))
		(else (remainder (* base (expmod base (- e 1) m))
		  	m))))

(define (prime? n t)
	(define (fermat-test x)
		(define (try-it a)
			(= (expmod a x x) a))
		(try-it (+ 1 (random (- n 1)))))
	(cond 
		((= t 0) true)
		((fermat-test n) (prime? n (- t 1)))
		(else false)))
