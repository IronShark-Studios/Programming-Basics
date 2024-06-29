(use-modules (srfi srfi-64)
             (hello))

(test-begin "harness")

(test-equal "test-hello"
  "Hello World\n"
  (hi))

(test-equal "test-named-hello"
  "Hello John\n"
  (hi "Jonh"))

(test-end "harness")
