(define (square x) (* x x))

(define (maxOfThree x y z)
    (cond ((and (> x y) (> x z)) x)
          ((and (> y x) (> y z)) y)
          ((and (> z x) (> z y)) z)))

(define (maxOfTwo a b)
    (if (> a b) a b))

(define (bigsquarenum a b c)
    (define max1
        (maxOfThree a b c))

    (define max2
        (cond ((= max1 a) (maxOfTwo b c))
              ((= max1 b) (maxOfTwo a c))
              ((= max1 c) (maxOfTwo a b))))

    (+ (square max1) (square max2)))

(bigsquarenum 2 4 1)