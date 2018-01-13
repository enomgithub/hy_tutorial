; ifを用いた条件分岐の例

; 変数の宣言と代入
(setv x 10)

; (if 条件式 真の場合の実行内容 偽の場合の実行内容)
(if (= x 10)
    ; 分岐による実行内容が複数行ある場合はdoを使う（ブロックのようなもの）
    (do
        (print "This is if true")
        (print "and why not, let's keep talking about how true it is!"))
    (print "This one's still simply just false"))
