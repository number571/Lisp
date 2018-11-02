(define (cons x y)
    (define (dispatch m)
        (cond ((= m 0) x)
              ((= m 1) y)
              (else (error "m /= 0 and m /= 1" m))))
    dispatch)

(define (car f) (f 0))
(define (cdr f) (f 1))
