# First, this will count the time Henri has been around the player.
execute as @e[tag=Henri] positioned as @s run scoreboard players add @a[distance=..20] HenriActiveCounter 1
execute as @e[tag=Henri] positioned as @s run scoreboard players remove @a[distance=40..] HenriActiveCounter 3

# Don't go over the top
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players reset @a[scores={HenriActitivityTracker=8..}] HenriActiveCounter
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players reset @a[scores={HenriActitivityTracker=8..}] HenriActitivityTracker
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players set @a[scores={HenriActiveCounter=..-100}] HenriActiveCounter -100

# Start talking
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=30},distance=..10] "[Henri the medicin man] oh hi there..."
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[distance=.. @a[scores={HenriActiveCounter=30},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=30},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=700},distance=..10] "[Henri the medicin man] I don't know... Would you wanna uh"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=700},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=700},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=900},distance=..10] "[Henri the medicin man] Would you wanna buy something? I got real good stuff!"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=900},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=900},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=4000},distance=..10] "[Henri the medicin man] Ey, hello there"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=4000},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=4000},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=7000},distance=..10] "[Henri the medicin man] Tis one love me friend"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=7000},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=7000},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=9000},distance=..10] "[Henri the medicin man] DAMNNNN I think I just took some of my own medicines"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=9000},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=9000},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=10000},distance=..10] "[Henri the medicin man] Okay. So I created something, and tried it out. But it was too strong man, I ain't making that ever again."
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=10000},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=10000},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=10600},distance=..10] "[Henri the medicin man] Hey you, I've got something for you. This'll make you glow-in-the-dark man!"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=10600},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run give @a[scores={HenriActiveCounter=10600},distance=..10] minecraft:potion{CustomPotionEffects:[{Id:24,Duration:2400}],CustomPotionColor:16773980,display:{Name:"\"Henri's Potion of glowing\""}}
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=10000},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=10900},distance=..10] "[Henri the medicin man] AAAAAAA"
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=10900},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=10900},distance=..40] HenriActitivityTracker 1

execute positioned as @e[tag=Henri,limit=1,sort=nearest] run tellraw @a[scores={HenriActiveCounter=11000},distance=..10] "[Henri the medicin man] Oh I think I just hit my head or sum... My potions get my skin thick as rock but my memories are so... bad..."
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.ambient ambient @a[scores={HenriActiveCounter=11000},distance=..10]
execute positioned as @e[tag=Henri,limit=1,sort=nearest] run scoreboard players add @a[scores={HenriActiveCounter=11000},distance=..40] HenriActitivityTracker 1

# Random item drops

#   For this, Henri needs a score too.
scoreboard players add @e[tag=Henri,limit=1,sort=random] HenriActiveCounter 1

#   Living zombie villager (rarity: 1000)
execute as @e[limit=1,sort=random] if entity @s[tag=Henri,scores={HenriActiveCounter=1000..}] positioned as @s run tag @s add HenriDrops
execute as @e[tag=HenriDrops] positioned as @s run say Oops, I had an expiriment go wrong...
execute as @e[tag=HenriDrops] positioned as @s run summon minecraft:zombie_villager ~ ~ ~
scoreboard players reset @e[tag=HenriDrops] HenriActiveCounter
tag @e remove HenriDrops



#   Stack of honey bottles (rarity: 3000)
execute as @e[limit=1,sort=random] if entity @s[tag=Henri,scores={HenriActiveCounter=3000..}] positioned as @s run tag @s add HenriDrops
execute as @e[tag=HenriDrops] positioned as @s run say Oops, seems I have dropped some of my honey bottles... Well you can just pick it up, I don't mind.
execute as @e[tag=HenriDrops] positioned as @s run summon item ~ ~-1 ~ {Item:{id:"minecraft:honey_bottle",Count:16}}
scoreboard players reset @e[tag=HenriDrops] HenriActiveCounter
tag @e remove HenriDrops

#   Brewing stand (rarity: 5000)
execute as @e[limit=1,sort=random] if entity @s[tag=Henri,scores={HenriActiveCounter=5000..}] positioned as @s run tag @s add HenriDrops
execute as @e[tag=HenriDrops] positioned as @s run say Oops, seems I have dropped one of my brewing stands... Well you can just pick it up, I don't mind.
execute as @e[tag=HenriDrops] positioned as @s run summon item ~ ~-1 ~ {Item:{id:"minecraft:brewing_stand",Count:1}}
scoreboard players reset @e[tag=HenriDrops] HenriActiveCounter
tag @e remove HenriDrops

#   Golden carrot (rarity: 6000)
execute as @e[limit=1,sort=random] if entity @s[tag=Henri,scores={HenriActiveCounter=6000..}] positioned as @s run tag @s add HenriDrops
execute as @e[tag=HenriDrops] positioned as @s run say Oops, seems I have dropped a golden carrot... Well you can just pick it up, I don't mind.
execute as @e[tag=HenriDrops] positioned as @s run summon item ~ ~-1 ~ {Item:{id:"minecraft:golden_carrot",Count:1}}
scoreboard players reset @e[tag=HenriDrops] HenriActiveCounter
tag @e remove HenriDrops

#   Living slime (rarity: 6500)
execute as @e[limit=1,sort=random] if entity @s[tag=Henri,scores={HenriActiveCounter=6500..}] positioned as @s run tag @s add HenriDrops
execute as @e[tag=HenriDrops] positioned as @s run say Oops, seems I have dropped a bottle... A slime broke free
execute as @e[tag=HenriDrops] positioned as @s run summon slime ~ ~ ~
scoreboard players reset @e[tag=HenriDrops] HenriActiveCounter
tag @e remove HenriDrops
