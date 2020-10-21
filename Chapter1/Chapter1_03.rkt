#lang sicp
; ------------------------------------------------------------------------------
; Created by Ulysses Carlos on 10/19/2020 at 11:12 PM
;
; Chapter1_03.rkt
; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.
; ------------------------------------------------------------------------------

(define (square x) (* x x))

(define (high x y)
  (if (> x y) x y))

(define (low x y)
  (if (< x y) x y))

(define (function x y z)
  (let ((val1 (high x y)) (val2 (high (low x y) z)) )
    (+ (square val1) (square val2))))
  


;; (function 6 4 5)
;; (define x (high 10 12))
;; (set! x (low 10 12))
;; (+ x)
(function 4 6 5)
