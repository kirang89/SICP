(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

; (new-if (> 3 2) 1 0)

(define (minus-one num)
    (- num 1))

(define (less-than-zero? num)
    (< num 0))


(define (test-new-if number)
    (new-if (less-than-zero? number)
            number
            (test-new-if (minus-one number))))

(test-new-if 4)