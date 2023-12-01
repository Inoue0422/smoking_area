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