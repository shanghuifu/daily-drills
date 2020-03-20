# Railsには、悪意のある攻撃に対してセキュリティを高める仕組みが様々用意されています。
# CSRFと呼ばれるサイトの成りすましによるクラッキングに対して、どのような対策が取られているか述べてください。
# なお、CSRFがどのようなものか理解に自信がない場合はあらかじめこのことについて調べてからお答えください。



# ApplicationControllerにデフォルトで
# protect_from_forgery with: :exception
# という記述がされている。これにより、アプリで作られたフォームに対してトークンが発行され、
# 正しいフォームからの通信なのかを判別することができる。