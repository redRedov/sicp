#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (max-sum-of-squares a b c)
    (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
          ((and (>= b a) (>= c a)) (sum-of-squares b c))
          (else (sum-of-squares a c))))


(check-equal? (square 3) 9)
(check-equal? (sum-of-squares 4 3) 25)
(check-equal? (max-sum-of-squares 4 3 5) 41)

