; Pythonにおける*argsと**kwargsの実装例

; asを使ったimport
(import [usage_optional_args :as oa])


(setv foo 10)
(setv bar "string")
(setv args [1 2])
(setv kwargs {"keyword2" 3 "keyword1" 4})

(print (apply oa.optional-arg args kwargs))
(print (apply oa.another-style kwargs))
(oa.some-func foo bar "args1" "arg2" :key1 "val1" :key2 "val2")
