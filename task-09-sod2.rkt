; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where the number of
; 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise

#lang racket
; defines a function
(define (sod2 listOne listTwo listThree)
  (if ; first checks if the first list is null
  (null? listOne)
     '() ; if it's null return nothing
     (cond
     ; checks if the modulo of the three lists sum to 0 'zero?'
       ((zero? (modulo(+ (car listOne)(car listTwo)(car listThree))2))
       ; add 0 to a new list and make a recursive call through the 3 lists' cdr
        (cons 0(sod2 (cdr listOne)(cdr listTwo)(cdr listThree))))
       ; otherwise add 1 to the new list and make a recursive call through the 3 lists' cdr
       (else
        (cons 1(sod2(cdr listOne)(cdr listTwo) (cdr listThree)))))))
; feed these lists into the function
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))