(define (greet name)
  (string-append "Test 1 " name "!"))

(greet "Test 2")

(let ((name "Horace Lupercal"))
  (string-append "Hello " name "!"))

;; Testing how adding multiple arguments to a lambda works
((lambda (name1 name2)
   (string-append "Legion Names: " name1 ", " name2))
 "Lunar Wolves"
 "REDACTED")

(+ 1 2 5)
(apply + '(1 2 5))

(define (chatty-add chatty-name . nums)
  (  format #t "<~a> If you add those together you get ~a!\n"
     chatty-name (apply + nums)))

(define* (shopkeeper thing-to-buy
                     #:optional
                     (how-many 1)
                     (cost 20)
                     #:key
                     (shopkeeper "Sammy")
                     (store "Plentiful Great Produce"))
  (format #t "You walk into ~a, grab something from the shelves,\n"
          store)
  (format #t "~a looks at you and says, "
          shopkeeper)
  (format #t "'~a ~a, eh? That'll be a ~a coins!\n"
          how-many thing-to-buy
          (* cost how-many)))

(define (add-and-multiply x y)
  (values (+ x y)
          (* x y)))


(define (string-enthusiast obj)
  (if (string? obj)
      "By the Emperor, you gave me a STRING!!!"
      "That WASN'T a STRING at all! More STRINGS please!"))

(define (goldilocks-zone n smallest-ok biggest-ok)
  (if (< n smallest-ok)
      "Too Small!!")
  (if (> n biggest-ok)
      "Too Big!!"
      "Just right!"))

(define (goldilocks-zone-1 n smallest-ok biggest-ok)
  (cond
   ((< n smallest-ok)
    "Too Small!")
   ((> n biggest-ok)
    "Too Big!")
   ((= n 18)
    "Oh NO!")
   (else
    "Just Right!")))

(define (make-goldilocks smallest-ok biggest-ok)
  (define (goldilocks n)
    (cond
     ((< n smallest-ok)
      "Too Small!")
     ((> n biggest-ok)
      "Too Big!")
     (else
    "Just Right!")))
goldilocks)

(define golden
  (make-goldilocks 10 30))


(define a-list (list 1 2 3))
(define b-list (list 1 2 3))

(define (fruit-finder fruit basket)
  (if (member fruit basket)
      "Found it!"
      "Fruit not found!"))

(define fruit-basket '(apple banna citron))

(define animal-sounds
  '((cat . meow)
    (dog . woof)
    (sheep . baa)
    (cow . shazoo)))

(define (cat-years years)
  (cond
   ((<= years 1)
    (* years 15))
   ((<= years 2)
    (+ 15 (* 9 (- years 1))))
   (else
    (+ 24 (* 4 (- years 2))))
   ))

(define (cat-entry name age)
  `(cat (name ,name)
        (age ,age)
        (cat-years-age ,(cat-years age))))


(map string-length '("cat" "dog" "gorilla" "salamander"))

(map (lambda (str)
       (string-append "I love "
                      (string-upcase str)
                      "!!!"))
     '("strawberries" "bannas" "grapes"))
