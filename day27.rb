# ①三項演算子とはどのようなものか説明してください。
# 条件分岐を行うための演算子。
# 条件式 ? trueの処理 : falseの処理
# 条件式に対し、trueとfalseそれぞれの結果を返す
# ②以下の記述を、三項演算子を用いて書き換えてください。

var = "文字列"

if var.class == String
  puts "varはStringです"
else
  puts "varはStringではありません"
end

var.class == String ? answer = "varはStringです" : answer =  "varはStringではありません"
puts answer