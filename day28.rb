# 同じ結果を得るためにも、様々なコードの記述方法があります。
# 以下のコードをワンライナーに書き換える方法について、２パターン以上のコードを記述してください。

array = [1, 2, 3, 4, 5].map do |el| 
  if el.odd?
    puts el
  end
end.compact!

array = [1, 2, 3, 4, 5].map do |el| 
  puts el if el.odd?
end.compact!


array = [1, 2, 3, 4, 5].map { |el| el if el.odd? }.compact!
array = (1..5).to_a.delete_if { |el| el.even? }
array = (1..5).to_a.delete_if(&:even?)
array = [1, 2, 3, 4, 5].select{ |el| el.odd?}