
; Natural Numbers as Church Numerals
; http://www.cs.unc.edu/~stotts/723/Lambda/church.html

(define zero (lambda f (lambda x x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

; Adding a and b means applying a function 'f' a times
; on a function 'f' applied b times on the value 'x'
(define (add a b) (lambda (f) (lambda (x) ((a f) ((b f) x)))))
