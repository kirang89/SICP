
(define (for-each1 fn items)
  (if (null? items)
      #t
      (let ((first (car items))
            (rest (cdr items)))
        (fn first)
        (for-each1 fn rest))))

(for-each1 (lambda (x) (newline) (display x))
           (list 1 2 3 4))
