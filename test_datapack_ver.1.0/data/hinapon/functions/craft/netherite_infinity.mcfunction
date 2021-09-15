#アイテム取得
give @s netherite_block{display:{Name:'{"text":"Infinity_Netherite","color":"aqua","italic":true}',Lore:['{"text":"無限に湧き出すネザライトを堪能しよう"}','{"text":"黒曜石の上に置くこと","color":"white","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]} 1

#レシピ消去
recipe take @s hinapon:netherite_infinity

#さらばチェスト
clear @s chest 1

#進捗消去
advancement revoke @s only hinapon:crafting/netherite_infinity