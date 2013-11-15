(define (weirdFunc n)
    (if (< n 3)
        n
        (+ (weirdFunc (- n 1))
           (* 2 (weirdFunc (- n 2)))
           (* 3 (weirdFunc (- n 3))))))


(weirdFunc 2)
(weirdFunc 5)