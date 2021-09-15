# 進捗消去
advancement revoke @s only hinapon:place_netherite_block

# "Infiniry_Netherite" を置いたプレイヤーの "inf_netherite" のスコアを500にセット（次のfunctionで使う）
scoreboard players set @s inf_netherite 500

# 自分の目線の高さがコマンドの実行位置の基準になり（tpしたら自分の目の高さにtpすることになる）　hinapon:process/process_inf_netherite　を実行
execute at @s anchored eyes positioned ^ ^ ^ run function hinapon:process/process_obs_det

# "Infiniry_Netherite" を置いたプレイヤーの "inf_netherite" のスコア（オブジェクト）を完全に削除する（また "Infiniry_Netherite" を置いたときにこのstart.mcfunctionが繰り返されて "inf_netherite" が戻ってくるから心配すんな）
scoreboard players reset @s inf_netherite