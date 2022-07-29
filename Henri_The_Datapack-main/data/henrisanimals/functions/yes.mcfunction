# Wolves
execute as @e[type=wolf,nbt={Sitting:1b}] run effect give @s minecraft:health_boost 1000000 255 true
execute as @e[type=wolf,nbt={Sitting:1b}] run effect give @s minecraft:regeneration 2 25 false
execute as @e[type=wolf,nbt={Sitting:1b}] run effect give @s minecraft:luck 2 255 false
execute as @e[type=wolf,nbt={Sitting:1b}] at @a[distance=..7] run effect give @s minecraft:minecraft:strength 5 255 false
execute as @e[type=wolf] if data entity @s Owner run effect give @s minecraft:resistance 3 255 true
execute as @e[type=wolf] if data entity @s Owner run effect give @s minecraft:strength 3 2 true

# Cats
execute as @e[type=cat] if data entity @s Owner run execute if entity @a[distance=..20] run execute at @e[type=creeper,distance=..15] positioned as @s run effect give @s minecraft:glowing 1 255 true
execute as @e[type=cat] if data entity @s Owner run execute if entity @a[distance=..20] run execute at @e[type=creeper,distance=..15] positioned as @s run particle minecraft:angry_villager ~ ~ ~
execute as @e[type=cat] positioned as @s if data entity @s Owner run scoreboard players add @a[distance=..5,scores={catlove=..10000}] catlove 1
execute as @e[type=cat] positioned as @s if data entity @s Owner run scoreboard players remove @a[distance=..5,scores={catlove=10000..}] catlove 1
execute as @e[type=cat] if data entity @s Owner run tell @a[scores={catlove=4995..5005}] I like being around you ❤
execute as @e[type=cat] if data entity @s Owner run effect give @a[scores={catlove=4000..6000}] luck 900 90 false
execute as @e[type=cat] if data entity @s Owner run data merge entity @p {Invulnerable:1b}


# Horses
execute as @e[type=horse] if data entity @s Owner run data merge entity @p {Invulnerable:1b}
