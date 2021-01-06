#テーブル設計

## users テーブル
| Column            | Type    | Options                   |
| ----------------- | ------- | ------------------------- |
| nickname          | string  | null: false               |
| email             | string  | null: false, unique: true |
| password          | string  | null: false               |
| family_name       | string  | null: false               |
| first_name        | string  | null: false               |
| family_name_kana  | string  | null: false               |
| first_name_kana   | string  | null: false               |
| birthyear_id      | integer | null: false               |
| birthmonth_id     | integer | null: false               |
| birthday_id       | integer | null: false               |

### Association
- has_many :items
- has_many :purchases

## items テーブル (Active Recordでimageを追加)
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| detail          | text       | null: false                    |
| category_id     | string     | null: false                    |
| status_id       | string     | null: false                    |
| fare_id         | string     | null: false                    |
| province_id     | string     | null: false                    |
| shipment_day_id | string     | null: false                    |
| price           | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :purchase

## purchases テーブル
| Column       | Type       | Options                        | 
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル
| Column       | Type       | Options                        | 
| ------------ | ---------- | ------------------------------ |
| postal_code  | integer    | null: false                    |
| province_id  | string     | null: false                    |
| city         | string     | null: false                    |
| address_line | string     | null: false                    |
| building     | string     |                                |
| phone_num    | integer    | null: false                    |

### Association
- belongs_to :purchase
