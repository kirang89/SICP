#lang scheme

(define (cont-frac-iter n d k i)
  (define ni (n i))
  (define di (d i))
  (if (> i k)
      0
      (/ ni (+ di (cont-frac-iter n d k (+ i 1))))))

;(define (cont-frac n d k)
;  (cont-frac-iter n d k 1))

(define (di term)
  (if (not (= (remainder term 3) 2))
      1.0
      (+ 2.0 (* 2.0 (quotient term 3)))))

(define (cont-frac n d k)
  (define (frac term) 
    (/ (n term)
       (+ (d term)
          (if (> term k)
              0
              (frac (+ term 1))))))
  (frac 1.0)) 

(cont-frac (lambda (i) 1.0)
           (lambda (i) (di i))
           10)

(define (e-euler k) 
   (cont-frac (lambda (i) 1) 
                     (lambda (i) 
                       (if (= (remainder i 3) 2) 
                           (/ (+ i 1) 1.5) 
                           1)) 
                     k)) 