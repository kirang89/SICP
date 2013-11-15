; Finding nth root

; n -> value of root
;
; Main formula: average-damp = log(n) - 1 ~ floor(log(n))
;
; To find nth root of x, we need to find a fixed point for x/y^(n-1) by repeating
; average damp on it, by using the formula above

(define tolerance 0.00001)

(define (nth-root x n)
    (fixed-point
        (repeated (average-damp
                    (lambda (y) (/ x (expt y (- n 1)))))
                  (floor (log2 n)))
        1.0))

(define (average-damp f)
   (lambda (x) (average x (f x))))

(define (average x y)
    (/ (+ x y) 2))

(define (log2 x)
  (/ (log x) (log 2)))

(define (fixed-point f first-guess)
   (define (close-enough? v1 v2)
     (< (abs (- v1 v2)) tolerance))
   (define (try guess)
     (let ((next (f guess)))
       (if (close-enough? guess next)
           next
           (try next))))
   (try first-guess))

(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n)
    (if (< n 1)
        (lambda (x) x)
        (compose f (repeated f (- n 1)))))


; Check
(nth-root 1000 3)
(nth-root 10000 4)
(nth-root 4294967296 32)
(nth-root 18446744073709551616 64)