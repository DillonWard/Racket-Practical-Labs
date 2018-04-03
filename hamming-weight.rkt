#lang racket

(define (hamming-weight h)
  (if
   (null? h)
   0
   
   (if
    (= (car h)0)
    (hamming-weight(cdr h))
    (+ 1 (hamming-weight(cdr h))))))

(hamming-weight (list 1 0 1 0 0 0 1 1 0 1))
