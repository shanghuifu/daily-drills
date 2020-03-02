# 後輩の太郎くんが、下記のコードを読んでいますが今ひとつ内容を
# 理解できないようです。

# 以下の3点について解説してください。

# メソッドの定義
def post_review(a_posts)
  # 変数の定義
  post = {}
  puts "ジャンルを入力してください："
  post[:genre]  = gets.chomp
  puts "タイトルを入力してください："
  post[:title]  = gets.chomp
  puts "感想を入力してください："
  post[:review] = gets.chomp
  line   = "---------------------------"

  # レビューの描画
  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"

  # 配列オブジェクトに追加
  a_posts << post

  # a_postsをメソッドの呼び出し元に返す
  return a_posts
end

def read_reviews(a_posts)
  # リストの表示
  number = 0
  a_posts.each do |post|
    puts "[#{number}]：#{post[:title]}のレビュー"
    number += 1
  end

  puts "\n見たいレビューの番号を入力してください："
  input = gets.to_i

  # レビューの取得
  post = a_posts[input]

  # レビューの描画
  line   = "---------------------------"
  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

posts = []             # 配列オブジェクトpostsの生成

while true do
  # メニューの表示
  puts "レビュー数：#{posts.length}"
  puts "[0]レビューを書く"
  puts "[1]レビューを読む"
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    posts = post_review(posts)  # post_reviewメソッドの呼び出し
  elsif input == 1 then
    read_reviews(posts) # read_reviewsメソッドの呼び出し
  elsif input == 2 then
    end_program         # end_programメソッドの呼び出し
  else
    exception           # exceptionメソッドの呼び出し
  end
end


# (1)コードが実行される順番がよくわからない
# 上から実行していくがメソッドの定義部分は除く
# 今回では61行目から実行
# 今回はinputの値によって4つの処理に分け、特定の入力がされるまでループする

# (2)メソッドを実行することで、変数posts, a_postsにどのような値が代入されるのかがわからない。
# 定義したpostsという配列に全てのレビュー情報をいれる
# メソッド内外でスコープが違うので各メソッドに引数としてpostsを渡し、その返り値をpostsに再代入
# 各メソッドではa_postsという仮引数が定義されている
# 渡されたpostsをa_postsという変数にコピーすることでメソッド内で使えるようにしている


# (3)post_reviewメソッドが何をしているのかがわからない
# post_reviewメソッドが呼ばれる時、全てのレビューが入ったpostsをa_postsとして使用する
# メソッドの中でpostというハッシュを定義し、その中に最新のレビューを格納
# 最後にa_postsにpostを追加し、それを返り値として返す