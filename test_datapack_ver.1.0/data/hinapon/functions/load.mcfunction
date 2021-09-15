#これはロード / リロード時の処理である、基本はデータパック導入時に一度だけ実行

say loaded. this is a cheating datapack. have a enjoy!

#　スコアボードに "inf_netherite" というスコアを定義する（dummyで定義したものはコマンドによる数値の変更しか受け付けないので値の変更がすごく楽）
scoreboard objectives add inf_netherite dummy

# "max"というエンティティの "inf_netherite" のスコアを追加(?)、0にセット（maxというエンティティは架空の存在だが、スコアは追加できるので便宜上使用している）
scoreboard players set max inf_netherite 0

# "min"というエンティティの "inf_netherite" のスコアを追加(?)、0にセット
scoreboard players set min inf_netherite 0

# 全てのプレイヤーの "inf_netherite" のスコアをを追加(?)、0にセット
scoreboard players set @a inf_netherite 0

#スコアボードのデバッグ用
#scoreboard objectives setdisplay sidebar inf_netherite

#サイドバー消したい時
#scoreboard objectives setdisplay sidebar