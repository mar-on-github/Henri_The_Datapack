execute unless entity @e[tag=BertBanker] run function bertthebanker:spawnin
execute positioned as @e[type=villager,sort=random,limit=1] run execute as @a[sort=nearest,limit=1] run tag @s add BertTravellocation
execute as @a[sort=random,limit=1] run tag @s add BertTravellocation
execute unless data storage minecraft:henridatapack {bertravels:0} run execute as @e[tag=BertBanker,limit=1,sort=random] at @a[tag=BertTravellocation,limit=1,sort=random,distance=30..] run tp @s ~ ~ ~
tag @a[tag=BertTravellocation] remove BertTravellocation
execute as @e[tag=BertBanker,limit=1,sort=random] run tell @a[sort=nearest,distance=..10] "Hi! Thought I'd drop by."
execute unless data storage minecraft:henridatapack {bertravels:0} run schedule function bertthebanker:berttravels 300s
