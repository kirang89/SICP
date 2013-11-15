; Factorial using a more generic procedure rather than a specific procedure for
; finding product

; Recursive version
(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate combiner null-value term (next a) next b))))

; Iterative version
(define (accumulate combiner null-value term a next b)
    (define (accumulate-iter a result)
        (if (> a b)
            result
            (accumulate-iter (next a) (combiner result (term a)))))

    (accumulate-iter a null-value))

(define (identity x) x)

(define (inc n) (+ n 1))

(define (factorial n)
    (accumulate * 1 identity 1 inc n))

(factorial 4)