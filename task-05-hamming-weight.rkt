#lang racket

(define (hamming-weight input)
  (if
   (null? input)
   0
   
   (if
    (= (car input) 0)
    (hamming-weight(cdr input))
    (+ 1 (hamming-weight(cdr input))))))

(hamming-weight (list 1 0 1 0 0 0 1 1 0 1))
