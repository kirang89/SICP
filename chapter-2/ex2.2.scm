
(define (make-segment p1 p2)
  (cons (make-point (car p1) (cdr p1))
        (make-point (car p2) (cdr p2))))

(define (start-segment l)
  (car l))

(define (end-segment l)
  (cdr l))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (mid-point l)
  (cons (/ (+ (x-point (start-segment l))
              (x-point (end-segment l)))
           2)
        (/ (+ (y-point (start-segment l))
              (y-point (end-segment l)))
           2)))

(define (print-point p)
  (newline)
  (display "(")
  (display(x-point p))
  (display ", ")
  (display (y-point p))
  (display ")")
  (newline))

;; Test em all!
(define l (make-segment '(2 . 3) '(7 . 20)))
(print-point (start-segment l))
(print-point (end-segment l))
(print-point (mid-point l))
