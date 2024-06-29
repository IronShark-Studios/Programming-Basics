(define-module (hello))

(define GREETING_PREFIX "Hello ")
(define GREETING_SUFFIX "\n")
(define DEFAULT_ADDRESSEE "World")


(define-public hi
  (lambda* (#:optional
            name)
    (string-append GREETING_PREFIX (addressee name) GREETING_SUFFIX)))

(define addressee
  (lambda (name)
    (if name
        "John"
        DEFAULT_ADDRESSEE)))
