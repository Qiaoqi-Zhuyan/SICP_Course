#lang sicp
;Experiment_2.1
(define (fin Nown Val_1 Val_2 n)
  (if (= n Nown)
      Val_2
      (fin (+ 1 Nown ) Val_2 (+ Val_1 Val_2) n)))
(define (f n)
  (if (= n 1)
      0
      (+ (/ 1 (fin 1 1 0 n)) (f (- n 1)))))
