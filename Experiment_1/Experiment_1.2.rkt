#lang sicp
;Experiment_1 1-2

(define (f n)
  (if (= n 0)
      0
      (+ (* n n) (f (- n 1)))))

