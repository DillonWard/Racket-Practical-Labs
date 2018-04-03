#lang racket

(define (sod2 listOne listTwo listThree)
  (if(null? listOne)
     '()
     (cond
       ((zero? (modulo(+ (car listOne)(car listTwo)(car listThree))2))
        (cons 0(sod2 (cdr listOne)(cdr listTwo)(cdr listThree))))
       
       (else
        (cons 1(sod2(cdr listOne)(cdr listTwo) (cdr listThree)))))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))