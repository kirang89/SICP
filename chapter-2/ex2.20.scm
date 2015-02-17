(define (filter-list fn items)
  (if (null? items)
      ()
      (if (fn (car items))
          (cons (car items)
                (filter-list fn (cdr items)))
          (filter-list fn (cdr items)))))

(define (same-parity first . rest)
  (let ((fn (if (even? first)
                even?
                odd?)))
    (cons first
          (filter-list fn rest))))


(filter-list odd? (list 1 2 3 4 5 6))

(same-parity 1 2 3 4 5 6)
(same-parity 2 3 4 5 6)
(same-parity 3 4 5 6)
(same-parity 2)
