; Author: Dillon Ward (Dillonward2017@gmail.com)
; a function that takes in a positive integer as an input and returns a list
; by recursively applying collatz conjecture to the list
; (1) Adapted from: https://docs.racket-lang.org/guide/Pairs__Lists__and_Racket_Syntax.html
; 31/1/2018

#lang racket

(define (append-list  listOne listTwo)
  (if (null listOne) listTwo (cons (car listOne) (append-list(cdr listOne) listTwo))))

(define (collatz-list n)
  (collats-conjecture n (list n))


  (define (collats-conjecture n d)
    (if (= n 1)
      d
    (if (=(modulo n 2) 0)
      (collats-conjecture(/ n 2)(append-list d(/ n 2))))
      (collats-conjecture(+ d(* n 3))(append-list d (+ d(* n 3))))))

  )

(collatz-list 5) 

(collatz-list 9)


;;; (define list '())
;;; ; defines the function 'collatz-list'
;;; (define (collatz-list n)

;;;   (append list n)
;;;   ; the function has 2 conditions (cond) - if the number is odd or even
;;;   ; if the number is even, it will use the first forumula
;;;   ; otherwise, it will use the second formula
;;;   (cond
;;;     ((= n 1) list '(1)) ; passes in 2 conditions - checks if the number being passed in is 
;;;     ((even? n) ; checks if the parameter being passed in is even
;;;      (cons n ; (1) cons takes in 2 paremeters (n the number being passed in, and the forumula)
;;;            (collatz-list (/ n 2)))
;;;      ) ; if it's even use this formula
    
;;;     (odd? ; checks if the parameter being passed in is odd
;;;      (cons n ; (1) cons takes in 2 paremeters (n the number being passed in, and the forumula)
;;;            (collatz-list (+ (* 3 n) 1)))
;;;      ); if the parameter is odd use this formula
;;;     ) ; close off the conditions
;;;   ); close off the function

;;; (collatz-list 9) ; passes 9 into the function
