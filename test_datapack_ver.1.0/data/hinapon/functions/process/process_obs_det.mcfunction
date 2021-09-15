# コマンド実行者の "inf_netherite" の値から1だけ引く
scoreboard players remove @s inf_netherite 1

# ~ ~ ~ の座標が　#hinapon:detect（黒曜石）であり、かつその1ブロック上がネザライトブロックである場合に　function hinapon:process/process_score　を実行
execute if block ~ ~ ~ #hinapon:detect run execute if block ~ ~1 ~ netherite_block run function hinapon:process/process_score

# ~ ~ ~ の座標が　#hinapon:detect（黒曜石）でない場合、コマンド実行者の "inf_netherite" が1になるまで、座標を ^ ^ ^0.01 だけずらして（要するに視線の方向に0.01ブロックだけ進む）再度この関数を実行
execute unless block ~ ~ ~ #hinapon:detect if score @s inf_netherite matches 1.. positioned ^ ^ ^0.01 run function hinapon:process/process_obs_det

# 個人的にここの発想凄くて、目線の先のブロックの検知を悩んでたら最後のexecuteコマンドの使い方を他の人がやってて、これでどんどんコマンドの実行位置を前にずらして検知したいブロックに当たるまでコマンド実行を繰り返す（前の関数でコマンド実行者の "inf_netherite" の値が500に設定されてたから、500回処理を繰り返す=5ブロック先まで検知できる）からうまくいくのすげーって思いました。