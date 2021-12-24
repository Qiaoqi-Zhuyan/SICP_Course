#lang sicp
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))
(define (f items)
  (cond ((null? items) nil)
        ((not (pair? items)) (list items))
        (else (append (f (car items)) (f (cdr items))))))
;Experiment3.2