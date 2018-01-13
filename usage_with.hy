; withの使用例

; readメソッドを使う場合
(with [f (open "./tmp/data.dat")]
    (print "Using read method:")
    (print (.read f)))

; readlinesメソッドを使う場合
(with [f (open "./tmp/data.dat")]
    (print "Using readlines method:")
    (for [s (.readlines f)]
        (print s)))
