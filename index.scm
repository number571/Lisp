(define (index i xs)
    (cond ((null? xs) null)
          ((= i 0) (car xs))
          (else (index (- i 1)(cdr xs)))))
