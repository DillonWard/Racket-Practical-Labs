; Author: Dillon Ward (Dillonward2017@gmail.com)
;  takes a list l as input and returns the number of non-zero elements in it

#lang racket

; defines a hamming-weight function that will return how many non-zero elements
(define (hamming-weight input)
; first checks if the input is null
  (if
   (null? input)
   0 ; return 0 if the input is null
   (if
    (= (car input) 0) ; first checks if the element in 0
    (hamming-weight(cdr input))
    (+ 1 (hamming-weight(cdr input)))))) ; if the element is not zero increment a count

(hamming-weight (list 1 0 1 0 0 0 1 1 0 1))
