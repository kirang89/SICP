
(define (exp x n)
  (if (= 0 n)
      1
      (* x (exp x (- n 1)))))

(define (cons a b) (* (exp 2 a) (exp 3 b)))

(define (car z) (count-divisions z 2))

(define (divides? a b)
  (= 0 (remainder b a)))

; Returns the no of times n can be divided
; by divisor, such that the remainder is 0.
; This helps in obtaining the value of a and b
(define (count-divisions n divisor)
   (define (iter x divisions)
     (if (divides? divisor x)
         (iter (/ x divisor) (+ divisions 1))
         divisions))
   (iter n 0))
