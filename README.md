# README

## incomeテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|supplement|string||
### Association
- has_many :income_values

## income_valueテーブル
|Column|Type|Options|
|------|----|-------|
|income_id|integer|null: false, foreign_key: true|
|year_month|date||
|money|integer||
|supplement|string||
### Association
- belongs_to :income


## fixedcostテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|supplement|string||
### Association
- has_many :fixedcost_values

## fixedcost_valueテーブル
|Column|Type|Options|
|------|----|-------|
|fixedcost_id|integer|null: false, foreign_key: true|
|year_month|date||
|money|integer||
|supplement|string||
### Association
- belongs_to :fixedcost

## variablecostテーブル
|Column|Type|Options|
|------|----|-------|
|variabelecost_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|supplement|string||
### Association
- has_many :variable_values

## variablecost_valueテーブル
|Column|Type|Options|
|------|----|-------|
|variablecost_id|integer|null: false, foreign_key: true|
|year_month|date||
|money|integer||
|supplement|string||
### Association
- belongs_to :variablecost
