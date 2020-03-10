# ユーザーに数字を入力してもらい、その数の回数だけHello!と表示させるコードを記述してください。
input = gets.to_i
input.times do
  puts "Hello!"
end

# 以下の仕様にしたがってコードを記述してください。

# ・Personクラスはプロパティ name, ageを持っている。
# ・StudentクラスはPersonクラスを継承している。
# ・Studentクラスにはintroduceメソッドが定義されている。実行すると
# 　「私の名前は◯◯です。◯歳です」と表示がされる。
# ・Studentクラスのインスタンスを作成し、introduceメソッドを実行する。