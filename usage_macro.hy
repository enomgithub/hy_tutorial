; マクロの使用例
(defmacro hello [person]
    `(print "Hello there," ~person))


(defmacro rev [code]
    ; opにcodeリストの最後の要素を代入し、
    ; paramsに、codeリストの最後以外の要素のリストを代入する
    (setv op (last code))
    (setv params (list (butlast code)))
    `(~op ~@params))


(defmacro ↻ [code]
    (setv op (last code))
    (setv params (list (butlast code)))
    `(~op ~@params))


(defn main []
    (hello "Tuukka")
    (print (rev (1 2 3 +)))
    (print (↻ (1 2 3 +))))


(if (= --name-- "__main__")
    (main))
