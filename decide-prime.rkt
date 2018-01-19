; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes in a positive integer and returns if it is a prime number
; Adapted from - https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
; Adapted from - https://docs.racket-lang.org/guide/for.html
; 19/01/2018
#lang racket

; define the function (prime? p) where 'prime?' is the name of the function
; and 'p' is the number that is passed into the function
; the prime? function will return true or false
(define (prime? p)
  ; defines a function 'non-divisible-by'
  (define (non-divisible-by n d)
    ; if d is equal to 1 return true ((= d 1) == (d = 1))
    (cond
     ((= d 1) #true)
     ; else if the remainder of n and d is equal to 0 return false
     (else (if(= (remainder n d) 0)
          #false
          (non-divisible-by n (- d 1))))))
  
  (if (= p 1)
      #true
      (non-divisible-by p (- p 1))))

; iterate through a list from 0 - 10 (2)
; pass i into the prime? function
(for/list ([i 10])
    (prime? i))