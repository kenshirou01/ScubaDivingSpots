## ■ Scuba Diving Spots
![ogp](https://i.gyazo.com/e94f4ebadc882f75c0710a2631652d34.png)

## ■ アプリURL

* ログイン用アカウント
    * email: example@diving.org
    * password: foobaree

https://scubadivingspots.onrender.com

## ■ サービス概要
日本のスキューバーダイビングのスポットと生き物が確認できるサイトです。

## ■ アプリを作ったキッカケ
スキューバーダイビングで潜る場所を探すときに、
複数のスポットとそこで見れる生き物を調べられるサイトがほとんどなく、
私自身がそんなサイトが欲しいと思い自分で作ることにしました。

## ■ 主なページと機能
| Topページ | ユーザ登録ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/1e5a535d2dfddc1cc3e77afc15900635.gif)](https://gyazo.com/1e5a535d2dfddc1cc3e77afc15900635)　| [![Image from Gyazo](https://i.gyazo.com/5bf59273611e9ef10517d164b57fdf1f.png)](https://gyazo.com/5bf59273611e9ef10517d164b57fdf1f) |
| Jmap jquery pluginを使い日本地図を表示しました。各都道府県を選択すると都道府県に紐づいているスポット一覧が表示されます。 | ユーザー登録をすることで、生き物(新期登録・編集・削除)やスポットの編集にて関連付けなどをできるようにしました。 |

| ログインページ |  プロフィールページ・編集ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/d101646a3218b3fafe54ef41e50bf3ee.png)](https://gyazo.com/d101646a3218b3fafe54ef41e50bf3ee) |　[![Image from Gyazo](https://i.gyazo.com/c50946b5dcef1a734e209c0b5baab67b.gif)](https://gyazo.com/c50946b5dcef1a734e209c0b5baab67b)|
| ブラウザを閉じてもログインを継続させるため、ログイン保持機能を実装しました。 | パスワードの変更やGravatarにてプロフィール画像を設定することができます。 |

| ダイビングスポット一覧ページ | 都道府県の詳細ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/bce35d068a882f69230a6d820dbb2478.gif)](https://gyazo.com/bce35d068a882f69230a6d820dbb2478) |　[![Image from Gyazo](https://i.gyazo.com/9767f5c9e56411b83de0f5438e6ddc77.gif)](https://gyazo.com/9767f5c9e56411b83de0f5438e6ddc77)|
| 都道府県毎に各スポットの「スポット名・住所・説明」を確認できます。 | 日本地図や都道府県一覧から選択した都道府県のダイビングスポットを確認できます！ |

| スポット詳細ページ | スポット編集ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/dcc5ff5b8854b80b6b95f72ff559ed32.gif)](https://gyazo.com/dcc5ff5b8854b80b6b95f72ff559ed32) |　[![Image from Gyazo](https://i.gyazo.com/48aa66cbcd04f85947e269075f9191e4.png)](https://gyazo.com/48aa66cbcd04f85947e269075f9191e4)|
| Google map apiにて住所のポイントを地図で表示します！またユーザーログインを有無で、スポット編集を表示・非表示に切り替えています。 | スポットと生き物の関連付けを設定が可能です。

| 生き物 一覧ページ | 生き物 詳細ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/5a9565880132c2d1706f32bea4f42093.png)](https://gyazo.com/5a9565880132c2d1706f32bea4f42093) |　[![Image from Gyazo](https://i.gyazo.com/ba9a9d95d2d161e6ee7beb7734cd7752.png)](https://gyazo.com/ba9a9d95d2d161e6ee7beb7734cd7752)|
| 全ての生き物が一覧で表示され、ログイン状態だと、新規登録・編集・削除ができます。 | 生き物の詳細情報が表示され写真が大きく見えます。また編集画面に移動できます。 |

| 生き物 新規登録ページ| 生き物 編集ページ |
| ---- | ---- |
| [![Image from Gyazo](https://i.gyazo.com/aded27d0fb498a26dfde889d680343d6.png)](https://gyazo.com/aded27d0fb498a26dfde889d680343d6) |　[![Image from Gyazo](https://i.gyazo.com/524ca9c9a81ee2a6f6b17fb469cefe42.png)](https://gyazo.com/524ca9c9a81ee2a6f6b17fb469cefe42)|
| 名前・時期・説明・写真を設定して登録可能です。 | 名前・時期・説明・写真の編集が可能です。 |

## ■ 使用技術

#### 言語・フレームワーク
- Ruby 3.3.0
- Rails 7.1.3

#### フロントエンド
- HTML
- CSS（SCSS）
- Bootstrap-Sass
- JavaScript（jQuery）
- Jmap jQuery Plugin

#### データベース
- PostgreSQL

#### 画像アップロード・管理
- CarrierWave
- MiniMagick
- AWS SDK for S3 / fog-aws

#### 認証・セキュリティ
- BCrypt

### 外部API
- Google Maps API

#### 開発環境ツール
- Docker/Docker-compose
- web-console
- rails-erd
- debug

## ■ ER図

[![Image from Gyazo](https://i.gyazo.com/3947251c3f800e8290a66f369c78ce42.png)](https://gyazo.com/3947251c3f800e8290a66f369c78ce42)
