# 対話型のインターフェイスで二桁以上の整数を入力すると、十の位と一の位の数字に対して、足す、掛けるを行い、
# 最後にそれぞれの結果を足し合わせて出力するプログラムをrubyで作成してください

puts "数字を入力してください"
input = gets.chomp
iti = input.split("")[-1].to_i
ju = input.split("")[-2].to_i
answer = (iti * ju) + (iti + ju)
puts "足し算結果と掛け算結果の合計値は#{answer}です"