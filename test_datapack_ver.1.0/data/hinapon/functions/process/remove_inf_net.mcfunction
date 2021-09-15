# "Infinity_Netherite" があったところを空気に置換
setblock ~ ~1 ~ air

# "Infinity_Netherite"があったところにエンティティ状の "Infinity_Netherite" を召喚
summon item ~ ~0.3 ~ {Item:{Count:1,id:"minecraft:netherite_block",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}],display:{Name:'{"text":"Infinity_Netherite","color":"aqua","italic":true}',Lore:['{"text":"無限に湧き出すネザライトを堪能しよう"}','{"text":"黒曜石の上に置くこと","color":"white","italic":false}']},HideFlags:1}}}