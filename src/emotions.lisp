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

;; prime - normal(middle)
(defvar joy             (make-instance 'normal  :name 'joy             :val   2))
(defvar trust           (make-instance 'normal  :name 'trust           :val   3))
(defvar fear            (make-instance 'normal  :name 'fear            :val   5))
(defvar surprise        (make-instance 'normal  :name 'surprise        :val   7))
(defvar sadness         (make-instance 'normal  :name 'sadness         :val  11))
(defvar disgust         (make-instance 'normal  :name 'disgust         :val  13))
(defvar anger           (make-instance 'normal  :name 'anger           :val  17))
(defvar anticipation    (make-instance 'normal  :name 'anticipation    :val  19))
;; prime - mild(low)
(defvar serenity        (make-instance 'mild    :name 'serenity        :val   2))
(defvar acceptance      (make-instance 'mild    :name 'acceptance      :val   3))
(defvar apprehension    (make-instance 'mild    :name 'apprehension    :val   5))
(defvar distraction     (make-instance 'mild    :name 'distraction     :val   7))
(defvar pensiveness     (make-instance 'mild    :name 'pensiveness     :val  11))
(defvar boredom         (make-instance 'mild    :name 'boredom         :val  13))
(defvar annoyance       (make-instance 'mild    :name 'annoyance       :val  17))
(defvar interest        (make-instance 'mild    :name 'interest        :val  19))
;; prime - intense(high)
(defvar ecstasy         (make-instance 'intense :name 'ecstasy         :val   2))
(defvar admiration      (make-instance 'intense :name 'admiration      :val   3))
(defvar terror          (make-instance 'intense :name 'terror          :val   5))
(defvar amazement       (make-instance 'intense :name 'amazement       :val   7))
(defvar grief           (make-instance 'intense :name 'grief           :val  11))
(defvar loathing        (make-instance 'intense :name 'loathing        :val  13))
(defvar rage            (make-instance 'intense :name 'rage            :val  17))
(defvar vigilance       (make-instance 'intense :name 'vigilance       :val  19))

;; composite - dyad-1
(defvar love            (make-instance 'dyad-1  :name 'love            :val   6))
(defvar submission      (make-instance 'dyad-1  :name 'submission      :val  15))
(defvar awe             (make-instance 'dyad-1  :name 'awe             :val  35))
(defvar disappointment  (make-instance 'dyad-1  :name 'disappointment  :val  77))
(defvar remorse         (make-instance 'dyad-1  :name 'remorse         :val 143))
(defvar contempt        (make-instance 'dyad-1  :name 'contempt        :val 221))
(defvar aggressiveness  (make-instance 'dyad-1  :name 'aggressiveness  :val 323))
(defvar optimism        (make-instance 'dyad-1  :name 'optimism        :val  38))
;; composite - dyad-2
(defvar hope            (make-instance 'dyad-2  :name 'hope            :val  57))
(defvar guilt           (make-instance 'dyad-2  :name 'guilt           :val  10))
(defvar curiosity       (make-instance 'dyad-2  :name 'curiosity       :val  21))
(defvar despair         (make-instance 'dyad-2  :name 'despair         :val  55))
(defvar unbelief        (make-instance 'dyad-2  :name 'unbelief        :val  91))
(defvar envy            (make-instance 'dyad-2  :name 'envy            :val 187))
(defvar cynicism        (make-instance 'dyad-2  :name 'cynicism        :val 247))
(defvar pride           (make-instance 'dyad-2  :name 'pride           :val  34))
;; composite - dyad-3
(defvar anxiety         (make-instance 'dyad-3  :name 'anxiety         :val  95))
(defvar delight         (make-instance 'dyad-3  :name 'delight         :val  14))
(defvar sentimentality  (make-instance 'dyad-3  :name 'sentimentality  :val  33))
(defvar shame           (make-instance 'dyad-3  :name 'shame           :val  65))
(defvar outrage         (make-instance 'dyad-3  :name 'outrage         :val 119))
(defvar pessimism       (make-instance 'dyad-3  :name 'pessimism       :val 209))
(defvar morbidness      (make-instance 'dyad-3  :name 'morbidness      :val  26))
(defvar dominance       (make-instance 'dyad-3  :name 'dominance       :val  51))
;; composite - dyad-4
(defvar bittersweetness (make-instance 'dyad-4  :name 'bittersweetness :val  22))
(defvar ambivalence     (make-instance 'dyad-4  :name 'ambivalence     :val  39))
(defvar frozenness      (make-instance 'dyad-4  :name 'frozenness      :val  85))
(defvar confusion       (make-instance 'dyad-4  :name 'confusion       :val 133))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; list
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar *data-prime* `(
  ;; prime - normal(middle)
    2 ,joy
    3 ,trust
    5 ,fear
    7 ,surprise
   11 ,sadness
   13 ,disgust
   17 ,anger
   19 ,anticipation
))
(defvar *data-composite* `(
  ;; composite - dyad-1
    6 ,love
   15 ,submission
   35 ,awe
   77 ,disappointment
  143 ,remorse
  221 ,contempt
  323 ,aggressiveness
   38 ,optimism
  ;; composite - dyad-2
   57 ,hope
   10 ,guilt
   21 ,curiosity
   55 ,despair
   91 ,unbelief
  187 ,envy
  247 ,cynicism
   34 ,pride
  ;; composite - dyad-3
   95 ,anxiety
   14 ,delight
   33 ,sentimentality
   65 ,shame
  119 ,outrage
  209 ,pessimism
   26 ,morbidness
   51 ,dominance
  ;; composite - dyad-4
   22 ,bittersweetness
   39 ,ambivalence
   85 ,frozenness
  133 ,confusion
))
