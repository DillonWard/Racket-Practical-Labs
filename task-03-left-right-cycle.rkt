#lang racket

(define (append-lists a b)
  (if(null? a)
     b
     (cons(car a) (append-lists(cdr a) b))))

(define (remove-last-index index)
    (if (null? (cdr index))
        '()
        (cons (car index) (remove-last-index (cdr index)))))


(define (left-cycle l)
  (if (null? l)
	'()
	(append-lists (cdr l) (list (car l))))) 

(define (right-cycle r)
      (append (cons (last r)
              (remove-last-index r))))


(left-cycle (list 1 2 3 4))
(right-cycle (list 1 2 3 4))

; was previously trying to see if I could remove the last index and cycle it right inside the same function
;(define (rcycle m)
;      (append (cons (last m)
;              (remove-last-index m)))
;(define (remove-last-index e)
;    (if (null? (cdr e))
;        (cons (car e) (remove-last-index (cdr e))))))





