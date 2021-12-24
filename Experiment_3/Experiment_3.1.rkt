#lang sicp
;Experiment_3.1
(define (length item)
  (if (null? item)
      0
      (+ 1 (length (cdr item)))))
       
(define (f n item)
  (define (f-iter n item num)
    (cond ((< ( length item) n) nil)
          ((= 0 num) item)
          (else (f-iter n (cdr item) (- num 1)))))
  (f-iter n item (- (length item) n)))

