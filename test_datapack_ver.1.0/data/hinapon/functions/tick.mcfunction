#execute if score max inf_netherite > min inf_netherite run function hinapon:process/process_inf_net　（これはボツ、なんか知らんが初期スポーンの位置にネザライトインゴットが湧きやがる）

#  "max" の "inf_netherite" のスコア >  "min" の "inf_netherite" のスコア　であるなら、残留ポーションをコマンドの実行者に指定して、その座標で　hinapon:process/process_inf_net　を実行（これでちゃんとした位置にネザライトインゴットが湧く）
execute if score max inf_netherite > min inf_netherite run execute as @e[type=area_effect_cloud,tag=start_process] at @s run function hinapon:process/process_inf_net

#  "max" の "inf_netherite" のスコア >  "min" の "inf_netherite" のスコア　であるなら、 "max" の "inf_netherite" のスコアから1引く
execute if score max inf_netherite > min inf_netherite run scoreboard players remove max inf_netherite 1

#  "max" の "inf_netherite" のスコア =  "min" の "inf_netherite" のスコア　であるなら、残留ポーションをコマンドの実行者に指定して、その座標で　hinapon:process/remove_inf_net　を実行（これで "Infinity_Netherite" が元に戻ってくるというワケ）
execute if score max inf_netherite = min inf_netherite run execute as @e[type=area_effect_cloud,tag=start_process] at @s run function hinapon:process/remove_inf_net

#  "max" の "inf_netherite" のスコア =  "min" の "inf_netherite" のスコア　であるなら、残留ポーションをキルする（二回連続で置いたりしちゃうと残留ポーションが2個ある判定になってネザライトインゴットも2倍もらえてしまうため）
execute if score max inf_netherite = min inf_netherite run kill @e[type=area_effect_cloud,tag=start_process] 