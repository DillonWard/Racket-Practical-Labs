; Author: Dillon Ward (Dillonward2017@gmail.com)
; takes a list (of integers) as input and returns a list of sublists of it that sum to zero
; Adapted from - https://lists.racket-lang.org/users/archive/2005-June/009010.html
; Adapted from - https://docs.racket-lang.org/reference/procedures.html#%28def._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._apply%29%29
; Adapted from - https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28def._htdp-intermediate-lambda._%28%28lib._lang%2Fhtdp-intermediate-lambda..rkt%29._filter%29%29

#lang racket

; defines a function for returning a list of sublists
(define (sublsum sublist)
  ; feed into this combinations of a list and return only
  ; the ones that sum to 0
  (= 0(apply + sublist)))

; filter and return the sublists the sum up to 0
(filter sublsum (combinations(list 1 2 3 4 -5)))
