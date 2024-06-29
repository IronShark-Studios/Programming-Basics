(use-modules (srfi srfi-64)
             (numbers))

(define DUMMY_NON_NEUTRAL_VALUE 1)

(test-begin "harness-numbers")

(test-equal "add-zero-zero"
  NEUTRAL_ELEMENT
  (integer-add NEUTRAL_ELEMENT NEUTRAL_ELEMENT))

(test-equal "add-one-zero"
  DUMMY_NON_NEUTRAL_VALUE
  (integer-add DUMMY_NON_NEUTRAL_VALUE NEUTRAL_ELEMENT))

(test-end "harness-numbers")
