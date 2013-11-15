(load "prime-smallest-divisor.scm")

(define (timed-prime-test n)
  (newline)
  (start-prime-test n (runtime)))

(define (report-prime number elapsed-time)
  (display number)
  (display " *** ")
  (display elapsed-time))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time))))

(define (search-for-primes start end)
    (cond ((>= start end) (newline) (display "Completed.") (newline))
          ((even? start) (search-for-primes (+ start 1) end))
          (else
            (timed-prime-test start)
            (search-for-primes (+ 2 start) end))))

(define (even? number)
    (= (remainder number 2) 0))

(search-for-primes 1000000 1100000)