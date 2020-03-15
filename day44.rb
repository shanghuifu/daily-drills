# 以下のようなクラスがあるとします。
class Article < ActiveRecord::Base
  belongs_to :user, dependent: :destroy 
end

# 2行目の記述について、これは文法的にどのような意味か「引数」という言葉を用いて説明してください。

# answer
# belongs_toはメソッドであり、:userが第一引数、dependent: :destroyが第二引数となっている。
# 第二引数の記述はハッシュの{}を省略した形で、{dependent: :destroy }を意味している。





# tweetsコントローラ内で、showアクションが定義されています。
# 5行目から9行目までの、respond_toブロックは、どのような処理を行なっているか、自分の言葉で説明してください。

# tweets_controller.rb
def index
  @tweets = Tweet.all

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @tweets }
    format.xml  { render xml:  @tweets }
    format.yaml { render text: @tweets.to_yaml }
  end
end

# 送られてきたリクエストによって、レスポンスを振り分けている。
# たとえば、/tweets.jsonというURLでページを開いた場合、json形式で変数@tweetsの中身が展開されます。