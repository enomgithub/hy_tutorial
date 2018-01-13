; オプション引数の使用例

; 関数の定義はdefnで行う
(defn optional-arg [pos1 pos2 &optional keyword1 [keyword2 42]]
    ; 引数のリストを返す関数
    ; keyword1とkeyword2がオプション引数で、
    ; keyword1にはデフォルトでNoneが、keyword2にはデフォルトで42が代入される
    [pos1 pos2 keyword1 keyword2])


; 辞書スタイルのキーワード引数
(defn another-style [&key {"key1" "val1" "key2" "val2"}]
    [key1 key2])


(defn some-func [foo bar &rest args &kwargs kwargs]
    (import pprint)
    (pprint.pprint (, foo bar args kwargs)))


(defn main []
    (print (optional-arg 1 2))
    (print (optional-arg 1 2 3 4))

    ; Hyのバージョンが0.10.1以上で利用可能な表記
    (print (optional-arg :keyword1 1 :pos2 2 :pos1 3 :keyword2 4)))


; メインモジュールの場合のみ実行する
(if (= --name-- "__main__")
    (main))
