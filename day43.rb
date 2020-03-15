# ①下記コードのlayoutとはどのようなメソッドが説明してください。
# items_controller.rb
class ItemsController < ApplicationController
  layout 'hogehoge'

  def index
    @items = Item.includes(items_users: :users)
  end
end

# ②①のコードで、itemsコントローラに「layout 'hogehoge'」があることで、
# ない場合と具体的にどのような動作の違いが出るか説明してください。

# コントローラによってヘッダー・フッターのデザインを変更したり、読み込むCSSを切り替えるメソッド。

# itemsコントローラのアクションが呼び出された際の、
# レイアウトファイルとしてapp/views/layouts/hogehoge.htmlが使われるようになる。
# 何も指定しない場合はapp/views/layouts/application.htmlが読み込まれる。