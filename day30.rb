# Rubyのメソッドを定義するときに、様々な引数の渡し方ができます。

# 以下の機能を利用したメソッドのコードを記述してください。
# メソッドの内容は問いません。

# ①デフォルト値
def method1(msg = "Hello")
  puts msg
end

method1()
method1("こんにちは")

# ②可変長引数
def method2(*msg)
  p msg
end

method2()
method2("a")
method2("a", "b")

# ③キーワード引数
def method3(msg: 'Hello', name: 'no name')
  puts "#{msg}, #{name}"
end

method3(msg: "こんにちは", name: "佐藤さん")
method3(name: "佐藤さん", msg: "こんにちは")


# 参考記事
# https://qiita.com/rtoya/items/33617078501776fdcad7