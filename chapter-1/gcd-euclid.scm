; GCD using Euclid's algorithm
; GCD(a, b) = GCD(b, r) where r is the remainder of a/b

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(gcd 206 40)