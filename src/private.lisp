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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; class
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defclass positive ()
  ((name :initarg :name :reader name)))

;; Prime number
(defclass prime (positive)
  ((val :initarg :val :reader val)))

(defclass normal  (prime) ())
(defclass mild    (prime) ())
(defclass intense (prime) ())

;; Composite number
(defclass composite (positive)
  ((val :initarg :val :reader val)))

(defclass dyad-1 (composite) ())
(defclass dyad-2 (composite) ())
(defclass dyad-3 (composite) ())
(defclass dyad-4 (composite) ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Prime Factors Decomposition
(defun prime-decompos (n)
  (let ((result '()))
    (loop for p from 2
          while (<= (* p p) n)
          do (loop while (zerop (mod n p))
                   do (push p result)
                      (setf n (/ n p))))
    (when (> n 1)
      (push n result))
   (nreverse result)))

;; Opposite in group
(defun opp-in-group (data emo)
  (let* ((val (val emo))
         (all-idx (/ (position val data) 2)))
    (multiple-value-bind (grp idx)
        (truncate all-idx 8)
      (let ((idx2 (+ (* grp 8)
                     (mod (+ 4 idx) 8))))
        (nth (+ (* idx2 2) 1) data)))))

; 
(defmethod print-object ((x positive) stream)
  (format stream "#<~a {~a} (~a=~a)>"
          (name x)
          (class-name (class-of x))
          (class-name (first (sb-mop::class-direct-superclasses (class-of x))))
          (val x)))
