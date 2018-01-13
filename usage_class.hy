; classの実装例
(defclass FooBar [object]
    "Yet Another Example Class"
    (defn --init-- [self x]
        (setv self.x x))

    (defn get-x [self]
        "Return our copy of x"
        self.x))


(defn main []
    (setv bar (FooBar 1))
    (print (bar.get-x)))


(if (= --name-- "__main__")
    (main))
