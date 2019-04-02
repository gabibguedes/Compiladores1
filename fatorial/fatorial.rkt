#lang scheme

(require math/number-theory)


(define (fat x)
  (if(< x 2) 1
     (* x (fat(- x 1)))))

(define (fizz-buzz x)
  (cond
    ((divides? 6 x) (display "FizzBuzz\n"))
    ((divides? 2 x) (display "Fizz\n"))
    ((divides? 3 x) (display "Buzz\n"))
    (#t (display x) (display "\n"))))

(define (one-to-100-fizz-buzz)
  (for([i (in-range 1 101)])
    (fizz-buzz i)))


(define (collatz n)
  (begin
    (display  n)
    (display "\n")
    (cond
      ((<= n 1) null)
      ((even? n) (collatz (/ n 2)))
      ((odd? n)(collatz (+ 1 (* n 3)))))))
