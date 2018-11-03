(define (^ x y)
    (define (iter a b c)
        (if (= b 0)
            c
            (iter a (- b 1) (* c a))))
    (iter x y 1))
