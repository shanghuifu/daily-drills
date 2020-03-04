# 以下のハッシュから値だけを取り出し、配列にしてください。ただし、hashクラスのvaluesメソッドは利用しないこととします。

attr = {name: "田中", age: 27, height: 180, weight: 75}
values = []
attr.each do |key, value|
  values << value
end

# Railsのwhereメソッドとfind_byメソッドは、どちらも特定のテーブルから条件に合うレコードを検索するためのメソッドです。
# 両者の違いについて説明してください。
# whereはid以外の条件で検索するメソッドで、該当するすべての結果を返す
# find_byはid以外の条件で検索するメソッドで、該当する結果のうち最初の１件(idのもっとも小さいもの)のみを返す