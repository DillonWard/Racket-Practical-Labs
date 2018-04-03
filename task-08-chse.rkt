#lang racket

(define (chse listOne listTwo listThree)

  (if
   (null? listOne)
  '()

  (cond
    ((= (car listOne) 1)
     (cons (car listTwo) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))) 

    (else
     (cons (car listThree) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))))))


(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))


;(define (chse listOne listTwo listThree)
;  (if (null? listOne)(null? listTwo)(null? listThree)
;  '()
;  (cond
;    ((= (car listOne) 1); if car's of lists x and y have same value
;     (cons (car listTwo) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))) 
;    (else
;     (cons (car listThree) (chse (cdr listOne) (cdr listTwo) (cdr listThree)))))))