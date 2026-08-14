(defpackage plutchik/tests/main
  (:use :cl
        :plutchik
        :rove))
(in-package :plutchik/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :plutchik)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
