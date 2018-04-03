; Author: Dillon Ward (Dillonward2017@gmail.com)
; Shifts the first or last index in a list to the left or right
; Adapted from - https://stackoverflow.com/questions/35115348/difference-between-append-and-cons-racket
; Adapted from - http://www.cs.utah.edu/plt/popl16/doc/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._cons%29%29

#lang racket

; defines a function that will append 2 lists together
(define (append-lists a b)
  ; checks if the first parameter is empty
  (if
  (null? a)
  ;if it's empty return just the second parameter
     b
     ; joins the two lists together (set a and b)
     (cons
     ; cdr will return the second element of the pair
      (car a) (append-lists(cdr a) b))))

; defines a function that is used for removing the last item
(define (remove-last-index index)
  ; if 'index' is empty it will return nothing
    (if 
    (null? (cdr index))
        '()
        ;return a new allocated pair
        (cons (car index) (remove-last-index (cdr index)))))

; defines a function for pushing an element from the head to the tail
(define (left-cycle l)
; if the list is null return nothing
  (if 
  (null? l)
	'()
  ; feeds these parameters into the append-lists function
	(append-lists (cdr l) (list (car l))))) 

; defines a function for pushing an elements from the tail to the head
(define (right-cycle r)
    (append (cons (last r)
    ; removes the last index of the list and pushes it to the top
    ; as a new list
              (remove-last-index r))))


(left-cycle (list 1 2 3 4))
(right-cycle (list 1 2 3 4))


;;;  was previously trying to see if I could remove the last index and cycle it right inside the same function
;;; (define (rcycle m)
;;;       (append (cons (last m)
;;;               (remove-last-index m)))
;;; (define (remove-last-index e)
;;;     (if (null? (cdr e))
;;;         (cons (car e) (remove-last-index (cdr e))))))





