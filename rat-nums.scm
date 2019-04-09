#lang scheme

(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))

(define (make-rat x y) 
	(let ((g (gcd x y)))
		(cons 	(/ x g)
				(/ y g))))

(define (numer xs) (car xs))
(define (denom xs) (cdr xs))

(define (add x y) (+ x y))
(define (sub x y) (- x y))
(define (mul x y) (* x y))
(define (div x y) (/ x y))

(define (print-rat xs)
	(display (numer xs))
	(display "/")
	(display (denom xs)))

(define (add-rat x y)
	(make-rat 	(add (mul (numer x) (denom y)) 
					 (mul (numer y) (denom x)))
				(mul (denom x) (denom y))))

(define (sub-rat x y)
	(make-rat 	(sub (mul (numer x) (denom y)) 
					 (mul (numer y) (denom x)))
				(mul (denom x) (denom y))))

(define (mul-rat x y)
	(make-rat	(mul (numer x) (numer y))
				(mul (denom x) (denom y))))

(define (div-rat x y)
	(make-rat	(mul (numer x) (denom y))
				(mul (numer y) (denom x))))

(print-rat 
	(div-rat (make-rat 6 3) (make-rat 3 3)))

(newline)
