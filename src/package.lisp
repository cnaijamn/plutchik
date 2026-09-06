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

(uiop:define-package plutchik
  (:nicknames #:pltk)
  (:use #:cl)
  (:export #:mul
           #:div
           #:decompose
           #:opposite

           ;; prime - normal(middle)
           #:joy             ; 喜び
           #:trust           ; 信頼
           #:fear            ; 恐れ
           #:surprise        ; 驚き
           #:sadness         ; 悲しみ
           #:disgust         ; 嫌悪
           #:anger           ; 怒り
           #:anticipation    ; 予期
           ;; prime - mild(low)
           #:serenity        ; 平穏
           #:acceptance      ; 容認
           #:apprehension    ; 心配
           #:distraction     ; 動揺
           #:pensiveness     ; 憂い
           #:boredom         ; 退屈
           #:annoyance       ; 煩さ
           #:interest        ; 興味
           ;; prime - intense(high)
           #:ecstasy         ; 恍惚
           #:admiration      ; 感嘆
           #:terror          ; 恐怖
           #:amazement       ; 驚嘆
           #:grief           ; 悲痛
           #:loathing        ; 憎悪
           #:rage            ; 激怒
           #:vigilance       ; 警戒

           ;; composite - dyad-1
           #:love            ; 愛
           #:submission      ; 服従
           #:awe             ; 畏怖
           #:disappointment  ; 失望
           #:remorse         ; 自責
           #:contempt        ; 軽蔑
           #:aggressiveness  ; 積極性
           #:optimism        ; 楽観
           ;; composite - dyad-2
           #:hope            ; 希望
           #:guilt           ; 罪悪感
           #:curiosity       ; 好奇心
           #:despair         ; 絶望
           #:unbelief        ; 不信
           #:envy            ; 羨望
           #:cynicism        ; 冷笑
           #:pride           ; 誇り
           ;; composite - dyad-3
           #:anxiety         ; 不安
           #:delight         ; 歓喜
           #:sentimentality  ; 感傷
           #:shame           ; 恥
           #:outrage         ; 憤慨
           #:pessimism       ; 悲観
           #:morbidness      ; 病的状態
           #:dominance       ; 優位
           ;; composite - dyad-4
           #:bittersweetness ; 切なさ
           #:ambivalence     ; 葛藤
           #:frozenness      ; 冷淡
           #:confusion       ; 混乱
))
