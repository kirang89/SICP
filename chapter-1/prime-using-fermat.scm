; Checking if a number is prime using the Fermat test
; Note that this does not guarantee that the number will always be prime, but
; instead relies on tests to prove that the margin for error is negligible

; Computes remainder(exponential of a number modulo another number)
(define (expmod base exp exp1)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder (square(expmod base (/ exp 2) exp1))
                      exp1))
          (else
            (remainder (* base (expmod base (- exp 1) exp1))
                       exp1))))

(define (square x) (* x x))

(define (isprime n)
    (define (check-prime a)
        (= (expmod a n n) a))

    (check-prime (+ 1 (random (- n 1)))))

(define (fast-prime number times)
    (cond ((= times 0) true)
          ((isprime number) (fast-prime number (- times 1)))
          (else false)))

; Not really certain if you'll get correct result everytime
(isprime 23)
(isprime 47)
(isprime 50)

; Much better probability of getting correct result
(fast-prime 23 10)
(fast-prime 50 5)