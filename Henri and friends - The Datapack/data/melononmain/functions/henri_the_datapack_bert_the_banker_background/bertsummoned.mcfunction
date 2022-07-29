execute unless entity @e[tag=BertBanker] run function melononmain:henri_the_datapack_bert_the_banker_background/spawnin
execute as @a[sort=random,limit=1] run tag @s add SummonedBert
execute positioned as @a[tag=SummonedBert] as @e[tag=BertBanker,limit=1,sort=random] run tp @s ~ ~ ~
tag @a[tag=SummonedBert] remove SummonedBert
execute as @e[tag=BertBanker,limit=1] run say Hi! Heard you needed me? Came as quick as I could.