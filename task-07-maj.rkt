; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes three lists x, y and z of equal length and containing 
; only 0’s and 1’s. It should return a list containing a 1 where two or more
; of x, y and z contain 1’s, and 0 otherwise
; Adapted from - http://www.cs.utah.edu/plt/popl16/doc/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._car%29%29
; Adapted from - http://www.cs.utah.edu/plt/popl16/doc/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cdr%29%29
; Adapted from - http://www.cs.utah.edu/plt/popl16/doc/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cons%29%29

#lang racket

(define (maj listOne listTwo listThree)

    (if (null? listOne) ; first checks if the list is empty 
        '() ; return nothing if it is
        (cond ; checks if first and second lists are the same
          ((= (car listOne) (car listTwo))
           (cons ; if they are cons the first element from the first
           ; list to a new list and iterate through the cdr of the other lists
            (car listOne) (maj (cdr listOne) (cdr listTwo) (cdr listThree))))
          ; if the first and last lists are the same
          ((= (car listOne) (car listThree))
          ; if they are do the same thing
           (cons 
           (car listOne) (maj (cdr listOne) (cdr listTwo) (cdr listThree))))
          ; Otherwise cons the first element of the second list and iterate
          ; through the cdr of the other lists
          (else
           (cons
            (car listTwo) (maj (cdr listOne) (cdr listTwo) (cdr listThree)))))))
; feed these lists into the function
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
