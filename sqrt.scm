(define dx 0.00001)

(define (square x) (* x x))

(define (fixed-point f first-guess)
    (define (close-enough? x y)
        (< (abs (- x y)) 0.00001))
    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

(define (deriv g)
    (lambda (x)
        (/ (- (g (+ x dx)) (g x))
            dx)))

(define (newton-transform g)
    (lambda (x)
        (- x (/ (g x) ((deriv g) x)))))

(define (newton-method g guess)
    (fixed-point (newton-transform g) guess))

(define (sqrt x)
    (newton-method (lambda (y)
        (- (square y) x))
        1.0))
