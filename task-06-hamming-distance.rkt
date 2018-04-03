; Author: Dillon Ward (Dillonward2017@gmail.com)
;  takes two lists and returns the number of positions in which they differ
#lang racket

(define (hamming-distance listOne listTwo)
  (if
  (null? listOne) ; if the first list is empty return 0
     0
     (if
     (null? listTwo) ; if the second list is empty return 0
        0
     (if
     (= (car listOne)(car listTwo)) ; checks first to see if the 2 lists are the same
        (hamming-distance (cdr listOne) (cdr listTwo))
        ; otherwise, if they are not the same
        ; if the single element in the list is different as the second one
        ; increment a counter
        (+ 1 (hamming-distance (cdr listOne) (cdr listTwo))))))) 
; feeds to lists into the function
(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
