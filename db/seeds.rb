# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@diving.org",
             password:              "foobaree",
             password_confirmation: "foobaree",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@diving.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

prefectures = [
  { name: "北海道" },
  { name: "青森県" },
  { name: "岩手県" },
  { name: "宮城県" },
  { name: "秋田県" },
  { name: "山形県" },
  { name: "福島県" },
  { name: "茨城県" },
  { name: "栃木県" },
  { name: "群馬県" },
  { name: "埼玉県" },
  { name: "千葉県" },
  { name: "東京都" },
  { name: "神奈川県" },
  { name: "新潟県" },
  { name: "富山県" },
  { name: "石川県" },
  { name: "福井県" },
  { name: "山梨県" },
  { name: "長野県" },
  { name: "岐阜県" },
  { name: "静岡県" },
  { name: "愛知県" },
  { name: "三重県" },
  { name: "滋賀県" },
  { name: "京都府" },
  { name: "大阪府" },
  { name: "兵庫県" },
  { name: "奈良県" },
  { name: "和歌山県" },
  { name: "鳥取県" },
  { name: "島根県" },
  { name: "岡山県" },
  { name: "広島県" },
  { name: "山口県" },
  { name: "徳島県" },
  { name: "香川県" },
  { name: "愛媛県" },
  { name: "高知県" },
  { name: "福岡県" },
  { name: "佐賀県" },
  { name: "長崎県" },
  { name: "熊本県" },
  { name: "大分県" },
  { name: "宮崎県" },
  { name: "鹿児島県" },
  { name: "沖縄県" }
]

# 都道府県の作成
prefectures.each do |prefecture|
  Prefecture.create!(prefecture)
end

spots = [
  {
    name: "オールブルー",
    address: "沖縄県竹富島1-2-3",
    description: "世界中の海の生き物がいるダイビングスポットです。",
    image: File.open(Rails.root.join('public', 'images', 'all_blue.jpg')),
    prefecture_id: Prefecture.find_by(name: "沖縄県").id
  },
  {
    name: "ブルーホール",
    address: "沖縄県石垣市川平",
    description: "神秘的なブルーホールのダイビングスポット。",
    image: File.open(Rails.root.join('public', 'images', 'blue_hole.jpg')),
    prefecture_id: Prefecture.find_by(name: "沖縄県").id
  },
  {
    name: "ホワイトビーチ",
    address: "千葉県勝浦市",
    description: "白い砂浜が美しいビーチのダイビングスポット。",
    image: File.open(Rails.root.join('public', 'images', 'white_beach.jpg')),
    prefecture_id: Prefecture.find_by(name: "千葉県").id
  },
  {
    name: "マンタポイント",
    address: "千葉県勝浦市",
    description: "マンタがよく見られるダイビングスポット。",
    image: File.open(Rails.root.join('public', 'images', 'manta_point.jpg')),
    prefecture_id: Prefecture.find_by(name: "千葉県").id
  }
]

spots.each do |spot|
  Spot.create!(spot)
end

# Creaturesのデータを作成する
creatures = [
  {
    name: "ハマクマノミ",
    description: "暖かい海で見ることができ、イソギンチャクに住んでいます。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'default_creature.jpg'))
  },
  {
    name: "アオウミガメ",
    description: "甲羅の縁が滑らかで、息継ぎの際に海面から顔を出す様子も見られます。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'default_creature.jpg'))
  },
  {
    name: "マンタ",
    description: "大きな胸ビレを優雅にはばたかせて大海を泳ぐマンタ。マンタは表層や中層を泳ぎ回ってプランクトンを「口を大きく開けて海水ごとプランクトンを取り込み、不要な海水は䚡孔から排出する」。標準和名オニイトマキエイ（学名Mobula birostris）とナンヨウマンタ（学名Mobula alfredi）の2種がいる。",
    periods: "10月〜3月が旬",
    photo: File.open(Rails.root.join('public', 'photo', 'default_creature.jpg'))
  },
  {
    name: "サンゴ礁",
    description: "美しいサンゴ礁が広がるエリア。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'default_creature.jpg'))
  }
]

creatures.each do |creature|
  Creature.create!(creature)
end

Spot.find_each do |spot|
  Creature.find_each do |creature|
    spot.creatures << creature unless spot.creatures.include?(creature)
  end
end
