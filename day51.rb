# Railsのコールバックを利用して以下の機能を実装してください。

# ①Pictweetに機能を追加する。
# ②ユーザーが投稿を行ったら、textカラムに保存されるデータの最後に「！！」を自動で追加する。

# なお解答欄には、変更したファイルのファイル名とコードを記述してください。

# tweet.rb
before_create :change_tweet

def change_tweet
  self.text = text + "！！"
end

# （補足）
# 上記コードのselfには、これから保存されるTweetクラスのインスタンスが代入される
# そのため、self.textとするとユーザーが入力した投稿のtextを取得することができる

# ただし、通常この場合のselfは省略可能
# そのため
# self.text = self.text + "！！"
# のように右辺のselfは書かなくて大丈夫

# ところが、その例外としてセッターメソッドを使う場合のselfは
# 省略できないため左辺のselfは必須となります。