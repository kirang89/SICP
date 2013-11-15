; Checking for prime number using smallest divisor method

(define (divides? a b)
    (= (remainder a b) 0))

(define (square x) (* x x))

(define (next divisor)
    (if (= divisor 2)
        3
        (+ divisor 2)))

(define (find-divisor number divisor)
    (cond ((> (square divisor) number) number)
          ((divides? number divisor) divisor)
          (else
            (find-divisor number (next divisor)))))

(define (smallest-divisor number)
    (find-divisor number 2))

(define (prime? number)
    (if (= number 1)
        false
        (= (smallest-divisor number) number)))

(prime? 23)
(prime? 34)
(prime? 47)
(prime? 53)
(prime? 59)
(prime? 63)