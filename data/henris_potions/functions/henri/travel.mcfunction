# Henri traveling through the map, where he goin?
execute unless entity @e[tag=Henri] run execute unless data storage minecraft:henridatapack {autospawn:0} run function henri:autospawn
execute positioned as @e[type=villager,sort=random,limit=1] run execute as @a[sort=nearest,limit=1] run tag @s add HenriTravellocation
execute as @a[sort=random,limit=1] run tag @s add HenriTravellocation
execute as @e[tag=Henri,limit=1,sort=random] positioned as @a[tag=HenriTravellocation,limit=1,sort=random,distance=30..] unless data storage minecraft:henridatapack {autospawn:0} run tp @s ~ ~ ~
tag @a[tag=HenriTravellocation] remove HenriTravellocation
execute unless data storage minecraft:henridatapack {autospawn:0} run schedule function henris_potions:henri/travel 2d
