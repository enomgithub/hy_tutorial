; importの使用例
(import os)

; /tmp/somedirディレクトリが存在するならば、
; /tmp/somedir/anotherdirディレクトリを作成する
(if (os.path.isdir "/tmp/somedir")
    (os.mkdir "/tmp/somedir/anotherdir")
    (print "Hey, that path isn't there!"))
