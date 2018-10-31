; 1
;(define (fibonacci x)
;   (cond ((= x 0) 0) 
;         ((= x 1) 1) 
;         (else (+ (fibonacci (- x 1))
;                  (fibonacci (- x 2))))))

; 2
(define (fibonacci x)
    (define (fib-iter n a b)
        (if (= n 0)
            b
            (fib-iter (- n 1) (+ a b) a)))
    (fib-iter x 1 0))
