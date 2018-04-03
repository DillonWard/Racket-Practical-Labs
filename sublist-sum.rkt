#lang racket

(define (sublsum list)
  (= 0(apply + list)))

(define a(combinations(list 1 2 3 4 -5)))

(filter sublsum a)
