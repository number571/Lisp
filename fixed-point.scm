(define (average x y) (/ (+ x y) 2))

(define (fixed-point f first-guess)
    (define (close-enough? x y)
        (< (abs (- x y)) 0.00001))
    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))
