# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@diving.org",
             password:              "foobaree",
             password_confirmation: "foobaree",
             admin: true)

# 追加のユーザーをまとめて生成する
10.times do |n|
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
    name: "水納島・瀬底島",
    address: "水納島",
    description: "沖縄本島北部に位置する水納島・瀬底島エリア。水納島は、なんと言っても本当に透明度が高くてめちゃくちゃ綺麗です。透明度が高い海に真っ白な綺麗な砂地、沖縄本島でも一番綺麗にサンゴが群生していると言われていて、本当に浅瀬は全部ハードコーラルなんじゃないか、と言うくらいたくさんのサンゴが群生しています。",
    image: File.open(Rails.root.join('public', 'images', 'minnasima.jpg')),
    prefecture_id: Prefecture.find_by(name: "沖縄県").id
  },
  {
    name: "川平石崎マンタスクランブル",
    address: "川平石崎マンタスクランブル 沖縄県石垣市",
    description: "石垣島のマンタスポットといえば、ココ。東西約600m・南北約200mの広いエリアにマンタのクリーニングステーションとなる根がいくつもある。根の上は7～13 mと浅く、根の端でマンタを待つ。特に9～10月頃は繁殖シーズンで、雌を何尾もの雄が追い回すシーンが見られることも!",
    image: File.open(Rails.root.join('public', 'images', 'manta_point.jpg')),
    prefecture_id: Prefecture.find_by(name: "沖縄県").id
  },
  {
    name: "波左間海中公園",
    address: "千葉県館山市波左間１０１２",
    description: "房総半島のほぼ先端、館山市の洲崎（すのさき）灯台のすぐ北の広い湾に位置するのが波左間（はさま）です。巨大なコブダイが長い間生息していて、立派に組まれた魚礁が見事な「ドリーム魚礁」、定置網にかかったマンボウやマンタ、ジンベエザメを一時的に保護している「マンボウランド」などなど、一日じゃ足りないぐらいの見どころが多いです！※マンボウランドには常にマンボウやジンベエがいるわけではありませんので、狙いたい方は《波左間海中公園》情報をチェックしておいてください。",
    image: File.open(Rails.root.join('public', 'images', 'hazama.jpg')),
    prefecture_id: Prefecture.find_by(name: "千葉県").id
  },
  {
    name: "柏島",
    address: "〒788-0343 高知県幡多郡大月町柏島",
    description: "柏島には1,000種以上の魚類が生息しているといわれますが、そのうち日本で初めて確認されたものが約100種いるという、イナズマヒカリイシモチ、イザヨイベンケイハゼ、キツネメネジリンボウなどなど。年間を通してダイビングができるダイビングパラダイス。5月ともなれば水温が平均で23℃近くなり、ベストシーズンの始まりです。7月には平均水温27.3度と南国そのものに。",
    image: File.open(Rails.root.join('public', 'images', 'kashiwajima.jpg')),
    prefecture_id: Prefecture.find_by(name: "高知県").id
  },
  {
    name: "積丹",
    address: "北海道積丹町",
    description: "日本の渚百選にも選ばれている海岸には、北海道で唯一の海中公園に指定されており、ダイナミックな地形が実に見事。ワイドからマクロまで見どころが豊富で、通年ミズダコを観察するすることができます。 冬の期間限定で、3～4mのジャイアント・オクトパスにも出会えるチャンスも!またトドダイビングができるショップもあります！",
    image: File.open(Rails.root.join('public', 'images', 'shakotan.jpg')),
    prefecture_id: Prefecture.find_by(name: "北海道").id
  }
]

spots.each do |spot|
  Spot.create!(spot)
end

# Creaturesのデータを作成する
creatures = [
  {
    name: "カクレクマノミ",
    description: "カクレクマノミ（Amphiprion percula）は、オレンジ色の体に3本の白い帯が特徴で、最も有名なクマノミの一種です。白い帯は頭部、体の中央、尾部に位置しており、黒い縁取りがはっきりと見えます。よくみると、体の形が他のクマノミとは異なっており、綺麗な曲線を描いているのも魅力の一つです。クマノミの見分け方は「1ハマ 2クマ 3カクレ」体にある白い帯の数で見分ける方法です。1本ならハマクマノミ、2本ならクマノミ、3本ならカクレクマノミです。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'kakurekumanomi.jpg'))
  },
  {
    name: "アオウミガメ",
    description: "小さい頭につるっとした甲羅が特徴です。甲長（甲羅の長さ）は大人で80-100cmぐらいです。小笠原諸島が日本最大の繁殖地です。八丈島や屋久島にも産卵にきます。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'aoumigame.jpg'))
  },
  {
    name: "ジョーフィッシュ",
    description: "ジョーフィッシュは、水深18メートル程度でも見られる魚です。底砂を掘り返して巣穴を作る習性があり、穴掘りをするのが特技です。また子育ては、口内保育で行います。(和名ワニアマダイ)",
    periods: "暖かい海であれば通年見られます。口内保育は、4月~6月で観察できます。",
    photo: File.open(Rails.root.join('public', 'photo', 'jyofish.jpg'))
  },
  {
    name: "ナンヨウマンタ",
    description: "大きな胸ビレを優雅にはばたかせて大海を泳ぐマンタ。マンタは表層や中層を泳ぎ回ってプランクトンを「口を大きく開けて海水ごとプランクトンを取り込み、不要な海水は䚡孔から排出する」。性格は温厚で、好奇心が強く、警戒心はあまり強くありません。ナンヨウマンタ（学名Mobula alfredi）",
    periods: "通年見ることができますが、石垣島では特に6月下旬の梅雨明けから10月頃まではマンタのベストシーズンとして、遭遇チャンスが格段に上がりますが、とにかくマンタが見たいなら夏、乱舞が見たいなら春と秋と言われています。",
    photo: File.open(Rails.root.join('public', 'photo', 'manta.jpg'))
  },
  {
    name: "ナカモトイロワケハゼ",
    description: "成魚でも全長2～3㎝程の小型のハゼの仲間。砂泥や砂れき底で貝殻や空瓶などをすみかにして、ペアでくらしている。水深35m以深に生息している。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'nakamoto.jpg'))
  },
  {
    name: "オガサワラカムリ",
    description: "愛称(ユキンコボウシガニ)カニの仲間で全長:5㎜前後。カイメンやホヤ、ソフトコーラルなど被ってるものは様々。写真ではチャツボボヤをかぶっている。",
    periods: "通年",
    photo: File.open(Rails.root.join('public', 'photo', 'yukinko.jpg'))
  },
  {
    name: "モンハナシャコ",
    description: "全体の体色は青緑色から赤茶色で、その他様々な色と模様を所々に組み合わせられ、鮮やか。日本では相模湾以南に分布する。昼行性で浅い海に生息し、サンゴ礁破片に覆われた柔らかい堆積物に巣穴を掘り、細かいサンゴ礁破片で坑道の内壁を補強する。巣穴は単調なU字状坑道、生息水深は3-40m（通常は10-30m）",
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
