; condを用いた条件分岐の例

; 変数の宣言と代入
(setv somevar 33)

; 上の条件から順に評価し、Trueとなった条件を実行する
; よって、Pythonのelseに当たるケースは最後にTrueとして書く
(cond
    [(> somevar 50)
        (print "That variable is too big!")]
    [(< somevar 10)
        (print "That variable is too small!")]
    [True
    ; この例の場合、somevar > 50 と somevar < 10 を満たさないため、以下を実行する
        (print "That variable is jussssst right!")])
