(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; **** normal order
; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if #t 0 (p))
; so result is 0

; **** applicative order
; (test 0 (p))
; the first step is evaluate the subexpressions of the combination.
; (if (= 0 0) 0 (p)) operator is (if (= 0 0)) operands is 0 and (p)
; and we must first perform the evaluation process on each element of the combination.
; (if (= 0 0)) and 0 are ended in this step. But (p) is evaluated to (p). so this is the infinite loop.
; Therefore (p) will never terminate.
