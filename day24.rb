# 以下の条件を満たすコードを記述してください。
# ・Bookクラスを作成する
# ・Bookクラスは@titleと@priceをプロパティとして持っている
# ・attr_readerを使用する
# ・Bookクラスのインスタンスを作成する（タイトル、価格は任意）
# ・作成したインスタンスから、タイトルを取得し画面に表示させる。

class Book
  attr_reader :title, :price
  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new("hoge", 1500)
puts book.title