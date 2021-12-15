#lang sicp
;Experiment_2.2
(define (fixed-point f first-guess)
  (define (close-enough? Val_1 Val_2)
    (< (abs (- Val_1 Val_2)) 0.0001))
  (define (try guess)
    (let  ( (next (f guess)) )
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))
(define (deriv g)
  (lambda(x) (/ (- (g (+ x 0.0001)) (g x)) 0.0001)))
(define (newton-transform g)
  (lambda(x) (- x (/ (g x) ((deriv g) x)))))
(define (newton-method g guess)
  (fixed-point (newton-transform g) guess))
