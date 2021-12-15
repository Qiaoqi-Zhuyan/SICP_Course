#lang sicp
;Experiment1_1,3

(define (f-iter n factor add)
  (cond ((= factor n) (+ add factor))
        ((not (= 0 (remainder n factor))) (f-iter n (+ 1 factor) add))
        (else (f-iter n (+ 1 factor ) (+ add factor)))))
(define (f n)
  (f-iter n 1 0))
