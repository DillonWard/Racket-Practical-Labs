; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing the elements of y in
; the positions where x is 1 and the elements of z otherwise

#lang racket

(define (chse listOne listTwo listThree)

  (if ; checks if the first list is empty
   (null? listOne)
  '()  ; if it is return nothing

  (cond
  ; checks if car of listOne is the same as listTwo
    ((= (car listOne) 1)
    ; add listTwo to a new list and feed in the cdr of the lists again to chse
     (cons (car listTwo) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))) 
     ; otherwise add listThree into a new list and feed in the cdr of the lists again to chse
    (else
     (cons (car listThree) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))))))
; feeds these lists into the function
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))


;;; (define (chse listOne listTwo listThree)
;;;   (if (null? listOne)(null? listTwo)(null? listThree)
;;;   '()
;;;   (cond
;;;     ((= (car listOne) 1)
;;;      (cons (car listTwo) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))) 
;;;     (else
;;;      (cons (car listThree) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))))))