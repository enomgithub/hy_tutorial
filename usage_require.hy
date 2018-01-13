; 他のモジュールのマクロをインポートするにはrequireを使う
(require [usage_macro :as macro])


(print (macro.rev (1 2 3 +)))
