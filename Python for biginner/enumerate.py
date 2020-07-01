#for文の変数は複数指定可、enumerateは第一引数が要素の数、第2変数が要素として変数に格納される
for index, color in enumerate(['red','blue','green']):
    print("No.{} is {}".format(index, color))