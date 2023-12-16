# アプリケーション名
smoking_area

# アプリケーション概要
喫煙所を投稿し、ユーザー同士で共有することができる。

# URL
https://smoking-area.onrender.com

# テスト用アカウント
・Basic認証パスワード:2222
・Basic認証ID:admin
・メールアドレス：：sample@sample.com
・パスワード:111111

# 利用方法

# アプリケーションを作成した背景
このアプリケーションは、喫煙所の減少に伴い、喫煙所を探すことが日々困難になっている現状から、私自身と私の友人たちの間で、利用可能な喫煙所の探索に関する課題が増加していることを実感していました。
ユーザーはこのプラットフォームを通じて、近くの喫煙所を見つけたり、新しい喫煙所を他のユーザーと共有したりすることができます。これにより、喫煙者が日々の喫煙に関連するストレスを減らし、必要な時に快適にタバコを楽しむことができるようにしたいと思いアプリケーションを開発することにしました。

# テーブル設計

## usersテーブル

| Colum              | Type   | Option                    |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :spots, through: :user_spots

## spotsテーブル

| Colum      | Type    | Option      |
| ---------- | ------- | ----------- |
| name       | string  | null: false |
| tobacco_id | integer | null: false |
| fence      | boolean | null: false |
| roof       | boolean | null: false |
| chair      | boolean | null: false |
| latitude   | float   | null: false |
| longitude  | float   | null: false |

### Association

- has_many :users, through: :user_spots

## user_spotsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| spot   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :spot