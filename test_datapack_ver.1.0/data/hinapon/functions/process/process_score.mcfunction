# "max"というエンティティの "inf_netherite" のスコアを100にセット
scoreboard players add max inf_netherite 100

# 残留ポーション（特に効果はなし、パーティクル無し）を出現させる
summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["start_process"]}
