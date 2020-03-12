# Railsアプリで管理者ページを作ろうと考えています。
# 通常コントローラーはapp/controllersフォルダに置きます。
# しかし、管理者機能用のコントローラーは、controllersフォルダに、
# adminというフォルダを作成しその中にまとめた方が整理しやすいと考えました。

# ①この場合、Railsのある機能を使うと適切なルーティングを作成することができます。
# その機能の名前を答えてください。

# ②上記の内容にしたがって、adminフォルダにproductsコントローラー（アクションはindexのみ）を作成します。
# その時のコントローラーおよびroutes.rbにどのような記述が必要か答えてください。


# 1.
# namespace または admin

# 2.
# products_controller
class Admin::ProductsController < ApplicationController
  def index
  end
end

# routes.rb
namespace :admin do
  resources :products, only: :index
end