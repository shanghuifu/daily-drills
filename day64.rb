# 任意の文字列の最初の2文字を最後尾に持ってきて
# その文字を出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# left2('Hello') → 'lloHe'
# left2('java') → 'vaja'
# left2('Hi') → 'Hi'

def left2(str)
  sliced = str.slice!(0, 2)
  str = str + sliced
  puts str
end

left2('java')

# 回答例
def left2(str)
  puts str[2..-1] + str[0..1]  
end