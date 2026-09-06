Plutchik
========
Plutchik's Wheel of Emotions Library.

* [Robert Plutchik](https://en.wikipedia.org/wiki/Robert_Plutchik#Plutchik's_wheel_of_emotions)
* [ロバート・プルチック](https://ja.wikipedia.org/wiki/%E3%83%AD%E3%83%90%E3%83%BC%E3%83%88%E3%83%BB%E3%83%97%E3%83%AB%E3%83%81%E3%83%83%E3%82%AF#%E3%83%97%E3%83%AB%E3%83%81%E3%83%83%E3%82%AF%E3%81%AE%E6%84%9F%E6%83%85%E3%81%AE%E8%BC%AA)

<img src="https://upload.wikimedia.org/wikipedia/commons/c/ce/Plutchik-wheel.svg" width="300px">

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

Plutchik's Wheel of Emotions
----------------------------

**Basic emotions are:**

|LOW                  |MIDDLE               |HIGH                 |
|:--------------------|:--------------------|:--------------------|
|serenity [平穏]      |joy [喜び]           |ecstasy [恍惚]       |
|acceptance [容認]    |trust [信頼]         |admiration [感嘆]    |
|apprehension [心配]  |fear [恐れ]          |terror [恐怖]        |
|distraction [動揺]   |surprise [驚き]      |amazement [驚嘆]     |
|pensiveness [憂い]   |sadness [悲しみ]     |grief [悲痛]         |
|boredom [退屈]       |disgust [嫌悪]       |loathing [憎悪]      |
|annoyance [煩さ]     |anger [怒り]         |rage [激怒]          |
|interest [興味]      |anticipation [予期]  |vigilance [警戒]     |

**Primary dyad emotions (one petal apart) are:**

    DYAD                      =   BASIC          *   BASIC
    -------------------------------------------------------------------
    love [愛]                 =   joy            *   trust
    submission [服従]         =   trust          *   fear
    awe [畏怖]                =   fear           *   surprise
    disappointment [失望]     =   surprise       *   sadness
    remorse [自責]            =   sadness        *   disgust
    contempt [軽蔑]           =   disgust        *   anger
    aggressiveness [積極性]   =   anger          *   anticipation
    optimism [楽観]           =   anticipation   *   joy


**Secondary dyad emotions (two petals apart) are:**

    DYAD                      =   BASIC          *   BASIC
    -------------------------------------------------------------------
    hope [希望]               =   anticipation   *   trust
    guilt [罪悪感]            =   joy            *   fear
    curiosity [好奇心]        =   trust          *   surprise
    despair [絶望]            =   fear           *   sadness
    unbelief [不信]           =   surprise       *   disgust
    envy [羨望]               =   sadness        *   anger
    cynicism [冷笑]           =   disgust        *   anticipation
    pride [誇り]              =   anger          *   joy


**Tertiary dyad emotions (three petals apart) are:**

    DYAD                      =   BASIC          *   BASIC
    -------------------------------------------------------------------
    anxiety [不安]            =   anticipation   *   fear
    delight [歓喜]            =   joy            *   surprise
    sentimentality [感傷]     =   trust          *   sadness
    shame [恥]                =   fear           *   disgust
    outrage [憤慨]            =   surprise       *   anger
    pessimism [悲観]          =   sadness        *   anticipation
    morbidness [病的状態]     =   disgust        *   joy
    dominance [優位]          =   anger          *   trust

**Opposite combinations emotions (four petals apart) are:**

    DYAD                      =   BASIC          *   BASIC
    -------------------------------------------------------------------
    bittersweetness [切なさ]  =   joy            *   sadness
    ambivalence [葛藤]        =   trust          *   disgust
    frozenness [冷淡]         =   fear           *   anger
    confusion [混乱]          =   surprise       *   anticipation
