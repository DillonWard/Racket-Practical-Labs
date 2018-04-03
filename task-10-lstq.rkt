#lang racket

(define (square num)(* num num))

(define (lstq listOne listTwo)
  (if
   (null? listOne)
     0
     (+
      (square (- (car listOne) (car listTwo)))(lstq (cdr listOne) (cdr listTwo)))))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
