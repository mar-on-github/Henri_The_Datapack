execute unless entity @e[tag=BertBanker] run function melononmain:henri_the_datapack_bert_the_banker_background/spawnin
execute positioned as @e[type=villager,sort=random,limit=1] run execute as @a[sort=nearest,limit=1] run tag @s add BertTravellocation
execute as @a[sort=random,limit=1] run tag @s add BertTravellocation
execute unless data storage minecraft:henridatapack {bertravels:0} run execute as @e[tag=BertBanker,limit=1,sort=random] positioned as @a[tag=BertTravellocation,limit=1,sort=random,distance=30..] run tp @s ~ ~ ~
tag @a[tag=BertTravellocation] remove BertTravellocation
execute as @e[tag=BertBanker] run tell @a[sort=nearest,limit=1] "Hi! Thought I'd drop by."
execute unless data storage minecraft:henridatapack {bertravels:0} run schedule function melononmain:henri_the_datapack_bert_the_banker_background/berttravels 300s
