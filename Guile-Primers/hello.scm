(define-module (hello))

(define-public hi
  (lambda* (#:optional name)
    (if name
        "Hello John\n"
        "Hello World\n")))
