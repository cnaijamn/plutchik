Plutchik
========
Plutchik's wheel of emotions library.

Installation
------------

    $ cd $QUICKLISP/local-projects
    $ git clone https://github.com/cnaijamn/plutchik.git
    $ sbcl
    * (ql:register-local-projects)

Example
-------

    (ql:quickload :plutchik)

    ; 喜び
    pltk:joy
    ;=> #<JOY {NORMAL} (PRIME=2)>

    ; 愛
    pltk:love
    ;=> #<LOVE {DYAD-1} (COMPOSITE=6)>

    ; 喜び × 信頼 -> 愛
    (pltk:mul pltk:joy pltk:trust)
    ;=> #<LOVE {DYAD-1} (COMPOSITE=6)>

    ; 喜び × 喜び -> NIL
    (pltk:mul pltk:joy pltk:joy)
    ;=> NIL

    ; 愛 ÷ 喜び -> 信頼
    (pltk:div pltk:love pltk:joy)
    ;=> #<TRUST {NORMAL} (PRIME=3)>

    ; 愛 -> 喜び, 信頼
    (pltk:decompose pltk:love)
    ;=> (#<JOY {NORMAL} (PRIME=2)>
    ;    #<TRUST {NORMAL} (PRIME=3)>)

    ; 喜び <-> 悲しみ
    (pltk:opposite pltk:joy)
    ;=> #<SADNESS {NORMAL} (PRIME=11)>

    ; 不安 <-> 憤慨
    (pltk:opposite pltk:anxiety)
    ;=> #<OUTRAGE {DYAD-3} (COMPOSITE=119)>
