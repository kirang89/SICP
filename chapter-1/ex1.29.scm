
(define (cube x) (* x x x))

(define (even? number)
    (= (remainder number 2) 0))

(define (inc n) (+ n 1))

(define (sum term a next b)
   (if (> a b)
       0
       (+ (term a)
          (sum term (next a) next b))))

(define (intercube f a b n)
    (define h (/ (- b a) n))
    (define (y k) (f (+ a (* k h))))
    (define (term k)
        (* (cond ((or (= k 0) (= k n)) 1)
              ((even? k) 2)
              (else 4))
            (y k)))

    (* (sum term 0 inc n) (/ h 3)))

(intercube cube 0 1 100)
; (intercube cube 0 1 1000)
; (intercube cube 0 1 10000)