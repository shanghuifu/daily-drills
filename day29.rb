# 配列の内部に、複数のユーザーの情報をハッシュとして持つ変数user_dataがあります。
user_data = [{user: {profile: {name: 'George'}}},
             {user: {profile: {name: 'Alice'}}},
             {user: {profile: {name: 'Taro'}}}]

# user_dataを利用して、全てのユーザーの名前だけが出力されるようにRubyでコーディングしてください。
# ただし、出力結果は次のようになるものとします。
# ターミナル
# George
# Alice
# Taro

user_data.each do |user|
  puts "#{user[:user][:profile][:name]}"
end

user_data.each{ |u| puts u.dig(:user, :profile, :name) }

# 以下のようなルーティングを定義した際に、
# tweetsコントローラのindexアクションについて、
# 実際に生成されるURLはどのようになるか答えなさい。

namespace :admin do
  namespece :users do
    resources :tweets, only[:index]
  end
end

/admin/users/tweets