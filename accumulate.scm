(define (accumulate f z xs)
    (if (null? xs) 
        z
        (accumulate f (f z (car xs)) (cdr xs))))
