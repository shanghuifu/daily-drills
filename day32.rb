# FizzBuzzという言葉遊びがあります。
# 1から数を数えていく際に、それが3の倍数だったら「Fizz」, 5の倍数だったら「Buzz」と言う、というものです。
# ただし、15の倍数の時は「FizzBuzz」と言います。
# 例） 1, 2, Fizz, 4, Buzz, Fizz ,,,,
# このFizzBuzzを再現できるメソッドを作成してください。
# ただし、いくつまでカウントするか、引数で指定できるものとします。

def fizzbuzz(num)
  for count in 1..num do
    if count % 15 == 0
      puts "FizzBuzz"
    elsif count % 3 == 0
      puts "Fizz"
    elsif count % 5 == 0
      puts "Buzz"
    else
      puts count
    end
  end
end

puts "カウントする数を入力してください"
input = gets.to_i
fizzbuzz(input)

# def fizzbuzz(max_num)
#   (1..max_num).each do |num|
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#   end
# end

# puts 'いくつまで数えますか？'
# num = gets.to_i
# fizzbuzz(num)