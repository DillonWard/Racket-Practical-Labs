#lang racket

(define (hamming-distance listOne listTwo)
  (if(null? listOne)
     0
     (if(null? listTwo)
        0
     (if(= (car listOne)(car listTwo))
        (hamming-distance (cdr listOne) (cdr listTwo))
        (+ 1 (hamming-distance (cdr listOne) (cdr listTwo)))))))

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
