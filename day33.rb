# Railsを使わずにHTML, CSSでサイトを作成する際は、
# HTMLファイルからlinkタグを使ってCSSファイルを読み込む設定を記述します。
# しかし、Railsの場合各ビューでCSSの読み込みの設定を書く必要はありません。

# ①なぜ必要なCSSやJavaScriptが読み込まれるのか。
# 「アセットパイプライン」「Sprockets」「マニフェストファイル」という用語を用いて説明してください。

# ②①を踏まえると、作成したCSSやJavaScriptのファイルはどこに配置すれば良いか説明してください。


# 解答
# ①
# Railsにはアセットパイプラインという仕組みが用意されており、
# 複数のCSSやJavaScriptファイルは一つにまとめて圧縮される。
# この機能はSprocketsというGemが担っている。

# 各ビューが表示される際、必ずapplication.html.erbが読み込まれるが、
# その中にstylesheet_link_tagの記述があり、
# それによってapp/assets/stylesheets/application.cssが呼び出される。

# application.cssはマニフェストファイルといわれ、
# このファイルから各CSSファイルを呼び出す仕組みになっている。
# JavaScriptも同様。

# ②
# cssの場合
# app/assets/stylesheets のフォルダにファイルを置く。

# JavaScriptの場合
# app/assets/javascripts のフォルダに置く