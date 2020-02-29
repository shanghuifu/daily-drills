# 問題１
# 下記の（１）を変換して（２）にするためのコードを記述してください。
# （１） "Today" " is" " sunny"
# （２） "Today is sunny"

str = "Today" + "is" + "sunny"


# 問題２
# 下記の（１）を変換して（２）にするためのコードを記述してください。
# （１） "Ruby, Rails, JavaScript"
# （２） ["Ruby", " Rails", " JavaScript"]

str = "Ruby, Rails, Javascript"
strAry = str.split(",")


# 問題３
# 下記の（１）を変換して（２）にするためのコードを記述してください。
# （１） "rails"
# （２） "Rails"

str = "rails"
str.capitalize


# 問題４
# 下記の（１）を変換して（２）にするためのコードを記述してください。
# （１） "abcde"
# （２） "edcba"

str = "abcde"
str.reverse
# または
str.sub!(/abcde/, "edcba")


# 問題５
# 下記の（１）を変換して（２）にするためのコードを記述してください。
# （１） "Hello, world"
# （２） "HELLO, WORLD"

str = "Hello, world"
str.upcase