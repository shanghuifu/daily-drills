# rails newを実行しアプリケーションを作成した段階では、
# application.cssに *= require_tree .という記述があり、これによってCSSファイルを読み込んでいます。

# SCSSを使用する際は、ファイルの拡張子をscssに変更した上で、@importでファイルを読み込みます。
# この時の、requireと@importはどう違うのか、それぞれのインポートの仕組みを踏まえて答えてください。


# css
# requireはRailsのアセットパイプラインの仕組みを使ってファイルをインポートする。
# アセットパイプラインは、cssファイルやJavaScriptのファイルを１つにまとめ、
# 圧縮することで処理速度を早くするための仕組み。sprocketsというgemがこの機能を担っている。

# scss
# それに対して@importはscssが用意しているメソッド。
# そのため、application.scssと拡張子を変更しないと使えない。
# また、application.scssからscssファイルをインポートするために使用する。