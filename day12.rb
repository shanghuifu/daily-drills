# 問題1
# application.html.erbの役割と、主な使い方を説明してください。
# 問題2
# ヘルパーメソッドのform_withについて特徴を述べてください。
# 問題3
# 通常ウェブサイトを作成する際は、htmlファイルにlinkタグを記述してcssファイルを読み込みます。
# Railsではこの記述が必要ない理由を述べてください。

# 1.
# 全てのビューが読み込まれる時にapplication.html.erbが読み込まれる
# よって、ヘッダーやフッターなど、共通で表示したい部分をここに記述する

# 2.
# form_withは自動でパスを選択してくれる他、HTTPメソッドを記述する必要がない
# コントローラから渡された、ActiveRecordを継承するモデルのインスタンスを使用できる
# form_withではinputタグは用いない

# 3.
# application.html.erbにstylesheet_link_tag 'application'という記述があるため、
# app/assets/stylesheets/application.cssが読み込まれる
# application.cssにあるrequire tree .　という記述により、同じフォルダにあるcssファイル全てが読み込まれる。