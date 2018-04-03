#lang racket

(define (sublsum sublist)
  (= 0(apply + sublist)))

(define a (combinations(list 1 2 3 4 -5)))

(filter sublsum a)
