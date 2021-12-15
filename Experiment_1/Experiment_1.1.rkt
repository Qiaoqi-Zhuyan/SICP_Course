#lang sicp
;Experiment_1.1
(define (f a b c)
  (define (f-iter a b c add )
    (cond ((<  10 a) (f-iter 0 b c (+ a add)))
          ((<  10 b) (f-iter 0 0 c (+ b add)))
          ((<  10 c) (f-iter 0 0 0 (+ c add)))
          (else add)))
  (f-iter a b c 0))
