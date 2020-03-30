# 20時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
# それ以外は「OK」と出力するメソッドを作成します。
# オウムが喋る時をture、喋らない時をfalseと入力することにし、時刻も同時に入力します。

# 呼び出し方：
# parrot_trouble(talking, hour)

# 出力例：
# parrot_trouble(true, 6) → NG
# parrot_trouble(true, 7) → OK
# parrot_trouble(false, 6) → OK
# parrot_trouble(false, 7) → OK

def parrot_trouble(talking, hour)
  if talking == true && (hour > 20 || hour < 7)
    puts "NG"
  else
    puts "OK"
  end
end

parrot_trouble(true, 5)