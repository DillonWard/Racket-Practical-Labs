#lang racket

(define (maj listOne listTwo listThree)

    (if (null? listOne)
        '()
        (cond
          ((= (car listOne) (car listTwo))
           (cons
            (car listOne) (maj (cdr listOne) (cdr listTwo) (cdr listThree))))
          
          ((= (car listOne) (car listThree))
           (cons (car listOne) (maj (cdr listOne) (cdr listTwo) (cdr listThree))))
          
          (else
           (cons
            (car listTwo) (maj (cdr listOne) (cdr listTwo) (cdr listThree)))))))


(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
