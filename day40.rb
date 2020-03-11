# 下記の手順でアプリケーションの雛形を作成してください。

# > cd ~/projects/ （フォルダ名は適宜読み替えてください）
# > rails new view-app -d mysql
# > cd view-app/
# > rails g scaffold product name:string price:integer
# > bundle exec rake db:create
# > bundle exec rake db:migrate

# このアプリケーションでは商品の名前と価格を登録することができます。
# 例えば価格に1000にして登録すると、一覧画面で見たときに
# 単に「1000」と表示されます。

# （問題）
# ①ヘルパーメソッドconverting_to_jpyを作成してください。
# 例えば「1000」という数値が引数で与えらたら「1,000円」といったように、
# 「桁区切り」と「円」を追加するコードを実装してください。
# ②index画面で表示する金額に対して①で作成したメソッドを使用してください。

module ProductsHelper
  def converting_to_jpy(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end
end

- @products.each do |product|
  = converting_to_jpy(product.price)