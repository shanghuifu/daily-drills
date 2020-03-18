class Impression < ActiveRecord::Base
  # VALID_YOUTUBE_URL_REGEX = ??? 以下のように変更
  VALID_YOUTUBE_URL_REGEX = /\A.*youtube.*\z/
  # 正規表現。/Aや/z、.*の意味を理解
  validates :url, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
end

# 2行目のvalidationを完成させてください。
# ただし条件は、「youtube」という文字が投稿された文字列に含まれていることを確かめることとします。