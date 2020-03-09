# 下記の仕様に従って、Railsアプリケーションの雛形を作成してください。
# ただし、scaffoldを使用してはいけません。

# ・アプリケーション名は任意
# ・データベースはMySQLを使用する。
# ・tweetsコントローラー内に、index, new, createアクションがある（メソッドの中身が記述してある必要はありません）。
# ・コントローラーに対応したビューファイルがある（表示される内容はデフォルトのままで構いません）。
# ・tweetモデル内に、title, contentカラムがある（いずれも文字列）。
# ・tweetsテーブルが作成されている。
# ・必要なルーティングが設定されている。

rails new hoge -d mysql
rails g controller tweets index new create
rails db:create
rails g model tweet title:string content:string
rails db:migrate
# in config/routes.rb
resources :tweets, only: [:index, :new, :create]