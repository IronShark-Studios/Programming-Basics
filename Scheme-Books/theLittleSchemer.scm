(define atom?
  (lambda (x)
    (and (not (pair?)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))
