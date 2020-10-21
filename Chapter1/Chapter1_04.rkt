#lang sicp
; ------------------------------------------------------------------------------
; Created by Ulysses Carlos on 10/20/2020 at 03:11 PM
;
; Chapter1_04.rkt
; Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behavior of
; the following procedure:
; ------------------------------------------------------------------------------

;; if b is greater than zero, then a + b
;; Otherwise, do a - (-b)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) 


(a-plus-abs-b 10 (- 4))

