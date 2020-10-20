#lang sicp
;; ------------------------------------------------------------------------------
;; Created by Ulysses Carlos on 10/19/2020 at 10:45 PM
;;
;; Chapter1_01.rkt
;; Below is a sequence of expressions. What is
;; the result printed by the interpreter in response to each ex-
;; pression? Assume that the sequence is to be evaluated in
;; the order in which it is presented.
;; ------------------------------------------------------------------------------

10
(+ 5 3 4) ;; 12
(- 9 1) ;; 8
(/ 6 2) ; 3
(+ (* 2 4) (- 4 6)) ; 6

(define a 3) ; 3
(define b (+ a 1)) ; 4

(+ a b (* a b)) ; (12) + 3 + 4 = 19
(= a b) ; false


;; if b > a and b < ab, return b else a
;; true and true, return 4?
(if (and (> b a) (< b (* a b)))
    b
    a)

;; 6 + 7 + 4 = 16
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

;; (b > a) ? b : a
;; 6
(+ 2 (if (> b a) b a))


;; b * b = 16
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
