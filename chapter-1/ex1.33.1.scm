; Abstracting accumulate to include a filter

(load "prime-smallest-divisor.scm")

(define (filtered-accumulate combiner null-value term a next b filter)
    (if (> a b)
        null-value
        (if (filter a)
            (combiner (term a)
                      (filtered-accumulate combiner null-value term (next a) next b filter))
            (combiner null-value
                      (filtered-accumulate combiner null-value term (next a) next b filter)))))

(define (inc n) (+ n 1))

(define (sum-squares-prime a b)
    (filtered-accumulate + 0 square a inc b prime?))

(sum-squares-prime 1 5)


