# シーザー暗号と呼ばれる暗号があります。
# これはアルファベットをある文字数分ずらすという暗号方式で、
# 例えば「a」を２文字分ずらす（進める）と「c」になります。

# 「frqjudwxodwlrq」という文字列があり、
# これを３文字ずらす（戻す）と復号できることがわかっています。
# それを実現させるコードを記述してください。

	
char = "frqjudwxodwlrq"
char_ary = char.split("")
changed_char_ary = []

char_ary.each do |char|
  changed_char_ary << (char.ord - 3).chr
end

p changed_char_ary.join