; リスト内包表記の使用例

; 0から99の値の2乗で、奇数のもののみからなるリストを取得する
(setv odds-squared
    (list-comp
        (pow num 2)
        (num (range 100)
        (= (% num 2) 1)))

; リストの中身の表示（インデックス付き）
(print "odds-squared:")
(for [(, i x) (enumerate odds-squared)]
    (print (.format "{}: {}" i x)))

(print (.format "Length of odds-squared: {}" (len odds-squared)))

; チェス盤の座標を取得する
(setv chess-board
    (list-comp
        (, x y)
        (x (range 1 9)
         y "ABCDEFGH")))

; チェス盤の座標を表示する
(print "chess-board:")
(for [coord chess-board]
    (print coord))
