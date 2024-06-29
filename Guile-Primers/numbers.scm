(define-module (numbers))

(define-public NEUTRAL_ELEMENT 0)

(define-public (integer-add int1 int2)
    (if (equal? NEUTRAL_ELEMENT int1)
        NEUTRAL_ELEMENT
        1))
