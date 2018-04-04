# Racket Practical Labs
###### *Dillon Ward - G00326756 - Theory of Algorithms*
---
# Introduction
The following repository contains solutions to problem sheets written in Racket for the module Theory of Algorithms. The module is taught to undergraduate students at GMIT in the Department of Computer Science and Applied Physics. The lecturer is Ian McLoughlin.

## Prerequisites
* [git](https://git-scm.com/)
* [DrRacket](https://racket-lang.org/)

## Cloning this Repository
To clone this repository and run the solutions, do the following:
```
In the command line change to a directory:
cd <directory>

Clone the repository:
git clone https://github.com/DillonWard/Racket-Practical-Labs.git

Open and run the solutions using DrRacket
```

## Running the Solutions
After you've installed DrRacket ([see above](https://github.com/DillonWard/Racket-Practical-Labs#prerequisites)) open the application.

![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/Screenshot_1.png?raw=true)

Once the application is open, in the tool bar select the `File` option and choose `Open` so that you can select a solution.

 ![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/Screenshot_2.png?raw=true)

 Once you select `Open`, open the directory where you [cloned](https://github.com/DillonWard/Racket-Practical-Labs#cloning-this-repository) the solutions and select a `.rkt` file to run. These files should have a small Racket logo to help identify them.

![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/Screenshot_3.png?raw=true)

Finally, after you've opened your solution, select the `RUN` option in the toolbar. This will run the solution and give the expected output.

![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/Screenshot_4.png?raw=true)


# Functional Programming
## What is Functional Programming?
[Functional programming](https://en.wikipedia.org/wiki/Functional_programming) is the process of building software by composing pure functions, avoiding shared state, mutable data, and side-effects. Functional programming is declarative rather than imperative, and application state flows through pure functions. Contrast with object oriented programming, where application state is usually shared and colocated with methods in objects.

Functional programming is a programming paradigm, meaning that it is a way of thinking about software construction based on some fundamental, defining principles. Other examples of programming paradigms include object oriented programming and procedural programming.


## Racket

![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/racket.png?raw=true)

[Racket](https://en.wikipedia.org/wiki/Racket_(programming_language)) is a general purpose, multi-paradigm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design, and implementation. The language is used in a variety of contexts such as scripting, general-purpose programming, computer science education, and research.

## Scheme 

![alt text](https://github.com/DillonWard/Racket-Practical-Labs/blob/master/images/scheme.png?raw=true)

[Scheme](https://en.wikipedia.org/wiki/Scheme_(programming_language)) is a programming language that supports multiple paradigms, including functional programming and imperative programming, and is one of the two main dialects of Lisp. Unlike Common Lisp, the other main dialect, Scheme follows a minimalist design philosophy specifying a small standard core with powerful tools for language extension.

# Solutions
##### Note: Some solutions don't use variable names given in problem sheet, out of preference and convenience for myself.
## Overview
CA 2018 Theory of Algorithms The following exercises should be completed in the Racket programming language. Remember to plan your work and make regular commits to your repository. The instructions for submitting your work are given on the Moodle page. Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please confirm their use with the lecturer.

## Problem 1 - Decide Prime
Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise.
Call the function `decide-prime`.
#### [See Solution](https://raw.githubusercontent.com/DillonWard/Racket-Practical-Labs/master/task-01-decide-prime.rkt)

## Problem 2 - Collatz List
Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.
End the recursion when (or if) the number becomes 1. Call the function `collatz-list`.
So, `collatz-list` should return a list whose first element is n0, the second element
is n1, and so on.
#### [See Solution](https://raw.githubusercontent.com/DillonWard/Racket-Practical-Labs/master/task-02-collatz-conjecture.rkt)

## Problem 3 - Left-Right Cycke
Write, from scratch, two functions in Racket. The first is called `lcycle`. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called `rcycle`, and it shifts the list cyclically shifted one place to the right.

## Problem 4 - Sublsum
Write a function `sublsum` in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
`combinations` built-in function. Note the order of the sublists and their elements
doesn’t matter.

## Problem 5 - Hamming Weight
Write a function `hamming-weight` in Racket that takes a list l as input and returns
the number of non-zero elements in it.

## Problem 6 - Hamming Distance
Write a function `hamming-distance` in Racket that takes two lists and returns the
number of positions in which they differ.

## Problem 7 - Maj
Write a function `maj` in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise.

## Problem 8 - Chse
Write a function `chse` in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise.

## Problem 9 - Sod2
Write a function `sod2` in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

## Problem 10 - Lstq
Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists:


This means take the *i* element of m from the *i* element of l and square the result for all *i*. Then add all of those to get d.

## References
* [Racket](https://racket-lang.org/)
* [Racket - Wiki](https://en.wikipedia.org/wiki/Racket_(programming_language))
* [Racket - Documentation](https://docs.racket-lang.org/quick/)
* [Scheme - Wiki](https://en.wikipedia.org/wiki/Scheme_(programming_language))
* [Master the JavaScript Interview: What is Functional Programming?](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0)
* [Functional Programming - Wiki](https://en.wikipedia.org/wiki/Functional_programming)