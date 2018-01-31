; Author: Dillon Ward (Dillonward2017@gmail.com)
; a function that takes in a positive integer as an input and returns a list
; by recursively applying collatz conjecture to the list
; 31/1/2018
#lang racket

(define list '())
; defines the function 'collatz-list'
(define (collatz-list n)

  (append list n)
  ; the function has 2 conditions (cond) - if the number is odd or even
  ; if the number is even, it will use the first forumula
  ; otherwise, it will use the second formula
  (cond
    ((= n 1) list '(1)) ; passes in 2 conditions - checks if the number being passed in is 
    ((even? n) ; checks if the parameter being passed in is even
     (cons n ; cons takes in 2 paremeters (n the number being passed in, and the forumula)
           (collatz-list (/ n 2)))
     ) ; if it's even use this formula
    
    (odd? ; checks if the parameter being passed in is odd
     (cons n ; cons takes in 2 paremeters (n the number being passed in, and the forumula)
           (collatz-list (+ (* 3 n) 1)))
     ); if the parameter is odd use this formula
    ) ; close off the conditions
  ); close off the function

(collatz-list 9) ; passes 5 into the function