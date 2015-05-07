(define (square a)
 (* a a))

(define (sum-lagest-2-square a b)
 (+ (square a) (square b)))

(define (compare a b c)
 (if (> a b)
  (if (> b c) (sum-lagest-2-square a b) (sum-lagest-2-square a c))
  (if (> a c) (sum-lagest-2-square a b) (sum-lagest-2-square b c))))


(compare 1 2 3)
(compare 4 2 3)
(compare 4 5 3)
(compare 6 5 3)
