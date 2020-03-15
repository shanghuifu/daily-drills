# 以下のようなコントローラがあるとします。
class ArticlesController < ApplicationController
  def show
    article = Article.find(params[:id])
  end
end

# ①showアクションの中にあるarticleという変数定義ですが、
# このままだとビューの表示を意図した通りに行うことができません。
# その理由と解決策を解説してください。

# ②4行目のArticle.find(params[:id])という記述のうち、
# params[:id]には詳細表示したいレコードのidが格納されます。
# なぜそのような動作になるのか、「rails routes」という言葉を使って説明してください。



# 1
# Railsではコントローラで設定された「インスタンス変数」がビューに渡される仕組みになっている。
# コードのarticleは通常のローカル変数であるためビューで使うことができない。
# そのため、articleを@articleに変更すればよい。

# 2
# rails routesを使ってアプリケーションのルーティングを確認すると、
# 通常showアクションには以下のような設定がされている。
# 
# Prefix Verb   URI Pattern                                   Controller#Action
# tweet  GET    /tweets/:id(.:format)                         tweets#show
# 
# そのため、例えば「localhost:3000/tweets/3」というURLが指定されると、
# paramsの「:id」というキーのバリューとして「3」が代入される。
# そのため、そのあと呼び出されたコントローラー内でparams[:id]と取り出すことができる。