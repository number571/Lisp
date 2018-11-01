(define (average x y) (/ (+ x y) 2))

(define (close-enough? x y) (< (abs (- x y)) 0.001))

(define (search f neg-p pos-p)
    (let ((mid-p (average neg-p pos-p)))
        (if (close-enough? neg-p pos-p)
            mid-p
            (let ((test (f mid-p)))
                (cond ((positive? test) 
                        (search f neg-p mid-p))
                      ((negative? test)
                        (search f mid-p pos-p))
                      (else mid-p))))))

(define (half-interval f a b)
    (let ((a-value (f a))
          (b-value (f b)))
        (cond ((and (negative? a-value) (positive? b-value))
                (search f a b))
              ((and (positive? a-value) (negative? b-value))
                (search f b a))
              (else (error "values (-a and -b) or (+a and +b)")))))
