(define (map f xs)
    (if (null? xs)
        null
        (cons (f (car xs))
              (map f (cdr xs)))))
