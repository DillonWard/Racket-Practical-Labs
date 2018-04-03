; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes as arguments two lists l and m of equal
; length and containing numbers. It should return d, the distance given by the sum of
; the square residuals between the numbers in the lists

#lang racket

; a small function for squaring the sum fed into it
(define (square num)(* num num))

; defines a function
(define (lstq listOne listTwo)
  (if ; first checks if the first list is empty
   (null? listOne)
     0 ; if it is return 0
     ; otherwise add up the result of first:
     ; squaring the first element of each list
     ; then recursively feed the cdr of the lists
     (+(square (- (car listOne) (car listTwo)))(lstq (cdr listOne) (cdr listTwo)))))
; feed these lists into the function
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
