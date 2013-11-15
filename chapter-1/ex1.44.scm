
(load "ex1.43.scm")

(define dx 0.001)

(define (average a b c)
    (/ (+ a b c) 2))

(define (smooth f)
    (lambda (x) (average (f (- x dx)) (f x) (f (+ x dx)))))

(define (nfolded-smooth f n)
    (repeated ((smooth n) f))
