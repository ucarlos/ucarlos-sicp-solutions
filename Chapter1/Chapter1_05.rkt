#lang sicp
; ------------------------------------------------------------------------------
; Created by Ulysses Carlos on 10/20/2020 at 03:19 PM
;
; Chapter1_05.rkt
; Ben Bitdiddle has invented a test to determine
; whether the interpreter he is faced with is using applicative-
; order evaluation or normal-order evaluation. He defines the
; following two procedures:
; (define (p) (p))
; (define (test x y)
;   (if (= x 0) 0 y))
; 
; Then he evaluates the expression
; (test 0 (p))
; What behavior will Ben observe with an interpreter that
; uses applicative-order evaluation? What behavior will he
; observe with an interpreter that uses normal-order evalu-
; ation? Explain your answer. (Assume that the evaluation
; rule for the special form if is the same whether the in-
; terpreter is using normal or applicative order: e predi-
; cate expression is evaluated ﬁrst, and the result determines
; whether to evaluate the consequent or the alternative ex-
; pression.)

; Solution:
; If using applicative-order evaluation, then the arguments will be evaluated
; first and then applied by the procedure. The p function is entirely recursive and
; continues indefinitely.

; If using normal-order evaluation, the interpreter will expand into the
; following:

; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if (= 0 0) 0 ((p)) --Isn't this recursive?
; (if (= 0 0 0 (((p)))
; (if (= 0 0 0 ((((p)))))
; ------------------------------------------------------------------------------

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

"Running the Program!"
(test 0 (p))
"Complete!"
