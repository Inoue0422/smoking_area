# アプリケーション名
smoking_area

# アプリケーション概要
喫煙所を投稿し、ユーザー同士で共有することができる。

# URL
https://smoking-area.onrender.com

# テスト用アカウント
・Basic認証ID:admin</br>
・Basic認証パスワード:2222</br>
・メールアドレス：：sample@sample.com</br>
・パスワード:111111

# 利用方法

## ユーザー新規登録
トップページのヘッダーからユーザー新規登録を行う

## 喫煙所投稿
フッターの投稿ボタンから喫煙所投稿ページに推移し喫煙所新規登録を行う

## 喫煙所検索
フッターの検索ボタンから投稿した喫煙所を確認する

# アプリケーションを作成した背景
このアプリケーションは、喫煙所の減少に伴い、喫煙所を探すことが日々困難になっている現状から、私自身と私の友人たちの間で、利用可能な喫煙所の探索に関する課題が増加していることを実感していました。
ユーザーはこのプラットフォームを通じて、近くの喫煙所を見つけたり、新しい喫煙所を他のユーザーと共有したりすることができます。これにより、喫煙者が日々の喫煙に関連するストレスを減らし、必要な時に快適にタバコを楽しむことができるようにしたいと思いアプリケーションを開発することにしました。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/dc0c8b040f9fb32840774a465acdb782.png)](https://gyazo.com/dc0c8b040f9fb32840774a465acdb782)

# 画面推移図
[![Image from Gyazo](https://i.gyazo.com/1b8409f95449b15ecc8980af7343cb00.png)](https://gyazo.com/1b8409f95449b15ecc8980af7343cb00)

# 開発環境
バックエンド<br>
・Ruby on rails7

フロントエンド<br>
・Bootstrap5<br>
・JavaScript（JQuery）

使用API<br>
・Google Maps API

# テーブル設計

## usersテーブル

| Colum              | Type   | Option                    |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :user_spots
- has_many :spots, through: :user_spots

## spotsテーブル

| Colum      | Type    | Option      |
| ---------- | ------- | ----------- |
| name       | string  | null: false |
| tobacco_id | integer | null: false |
| fence      | boolean |             |
| roof       | boolean |             |
| chair      | boolean |             |
| latitude   | float   | null: false |
| longitude  | float   | null: false |

### Association

- has_many :user_spots
- has_many :users, through: :user_spots

## user_spotsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| spot   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :spot