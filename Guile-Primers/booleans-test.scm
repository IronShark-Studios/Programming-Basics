(use-modules (srfi srfi-64)
             (booleans))

(test-begin "bol-inver")

(test-equal "true-inverted-returns-false"
  #f
  (boolean-invert #t))

(test-equal "fales-inverted-returns-true"
            #t
            (boolean-invert #f))

(test-end "bol-inver")
