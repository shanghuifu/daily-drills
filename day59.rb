# あなたは警官です。aとｂ二人の容疑者の取り調べをしています。
# どちらも証言がTrue、またはFalseであればその証言はTrueです。
# しかしどちらかがFalseでTrueであればその証言はFalse、と出力するメソッドを作りましょう。

# 呼び出し方：
# police_trouble(a, b)

# 出力例：
# police_trouble(true, false) → False
# police_trouble(false, false) → True
# police_trouble(true, true) → True

def police_trouble(a, b)
  if (a == true && b == true) || (a != true && b != true)
    puts "true"
  else
    puts "false"
  end
end

a = true
b = true

police_trouble(a, b)



def police_trouble(a, b)
  if a && b || !a && !b
    puts "True"
  else
    puts "False"
  end
end