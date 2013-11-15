;Finding square root using the half interval method

(define (positive? value)
    (> value 0.0))

(define (negative? value)
    (< value 0.0))

(define (close-enough? a b)
    (< (abs (- a b)) 0.001))

(define (average a b)
    (/ (+ a b) 2.0))

(define (search f a b)
    (let ((midp (average a b)))
         (if (close-enough? a b)
             midp
             (let ((midp-value (f midp)))
                (cond ((positive? midp-value) (search f a midp))
                      ((negative? midp-value) (search f midp b))
                      (else midp))))))

(define (half-interval f a b)
    (let ((a-value (f a))
          (b-value (f b)))

         (cond ((and (negative? a-value) (positive? b-value))
                (search f a b))
               ((and (positive? a-value) (negative? b-value))
                (search f b a))
               (else
                (error "Values are not of opp sign !" a b)))))


(half-interval sin 2.0 4.0)