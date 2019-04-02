#lang scheme

(define lst (list 1 2 3 4 5))

(define (fibs n)(fibs-acc n null))

(define (fibs-acc n acc)
  (cond
    ((= n 0) (reverse acc))
    ((has-less-than-one-element? acc) (fibs-acc(- n 1)(cons 1 acc)))
    (#t (let
            ((y (car acc))
             (x (car (cdr acc))))
          (fibs-acc (- n 1) (cons (+ x y) acc))))))

(define (has-less-than-one-element? lst)
  (cond
    ((null? lst) #t)
    ((null? (cdr lst)) #t)
    (#t #f)))
