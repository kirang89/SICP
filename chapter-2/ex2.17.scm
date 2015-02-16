(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

; Using length
(define (last-pair tlist)
  (if (= 1 (length tlist))
      tlist
      (last-pair (cdr tlist))))

; Simpler solution without using length
(define (last-pair1 tlist)
  (let ((rest (cdr tlist)))
    (if (null? rest)
        tlist
        (last-pair1 rest))))

(last-pair (list 1 2 12 30 99 292))
(last-pair1 (list 1 2 12 30 29 292))
