
(load "ex1.33.1.scm")

(define (gcd m n)
   (cond ((< m n) (gcd n m))
         ((= n 0) m)
         (else (gcd n (remainder m n)))))

(define (relative-prime i n)
    (= (gcd i n) 1))

(define (identity x) x)

(define (product-relative-primes number)
    (define (rp-filter x) (relative-prime x number))
    (filtered-accumulate * 1 identity 1 inc number rp-filter))

(product-relative-primes 5)