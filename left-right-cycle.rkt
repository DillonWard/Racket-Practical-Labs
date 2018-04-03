#lang racket

(define (append-lists a b)
  (if(null? a)
     b
     (cons(car a) (append-lists(cdr a) b))))

(define (left-cycle l)
  (if (null?)
      '()
      (append-lists(cdr 1) (list(car 1)))))

(left-cycle (list 1 2 3 4))
