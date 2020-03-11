# routes.rbでは、resourcesを使ってルーティングを定義することをお伝えしてきました。
# ところで、resourcesの代わりにresourceを使ってルーティングを定義することもできます。
# resourceを利用した際に生成されるルーティングについて、resourcesを用いた場合との主な違いを2点、説明してください

# ・idつきのパスが生成されない。show, editアクションの実行に、idが必要ない場合に有効。
# ・indexアクション用のルーティングが生成されない。
# ・複数のリソースならresources、一つしかないならresource