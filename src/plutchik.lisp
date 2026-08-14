;;; Copyright (c) 2026 Chez Naijamn
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without
;;; restriction, including without limitation the rights to use, copy,
;;; modify, merge, publish, distribute, sublicense, and/or sell copies
;;; of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;;; NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;;; DEALINGS IN THE SOFTWARE.

(in-package #:plutchik)

;; multiplication
(defmethod mul ((a prime) (b prime))
  (let ((n (* (val a) (val b))))
    (getf *data-composite* n)))

;; division
(defmethod div ((x composite) (a prime))
  (let ((n (/ (val x) (val a))))
    (getf *data-prime* n)))

;; decompose
(defmethod decompose ((x composite))
  (let ((lst (prime-decompos (val x))))
    (mapcar (lambda (n)
              (getf *data-prime* n))
            lst)))

;; opposite
(defmethod opposite ((x positive))
  (let ((cate (class-name (class-of x))))
    (case cate
      ((normal) ;TODO: mild intense
       (opp-in-group *data-prime* x))
      ((dyad-1 dyad-2 dyad-3)
       (opp-in-group *data-composite* x))
      (t nil))))
