(define (accumulate f z xs)
    (if (null? xs) 
        z
        (accumulate f (f z (car xs)) (cdr xs))))

(define (flatmap f xs)
    (accumulate append null (map f xs)))

(define (remove x xs)
    (filter (lambda (z)
                (not (= z x)))
            xs))

(define (permutations xs)
    (if (null? xs) 
        (list null)
        (flatmap (lambda (x)
                    (map (lambda (p) (cons x p))
                         (permutations (remove x xs))))
                 xs)))
