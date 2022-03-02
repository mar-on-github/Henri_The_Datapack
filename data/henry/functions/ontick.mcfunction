# Settings enforcer
execute if data storage minecraft:henridatapack {enablespawning:true} run scoreboard players enable @a SummonTheScaryGuy
execute if data storage minecraft:henridatapack {henricheatenabled:true} run scoreboard players enable @a DoTheHenriCheat
function henrysanimals:wolveshavesupersleep

# Tell them the Henri version
scoreboard players enable @a HenriVersion
# (generated with:
# https://minecraft.tools/en/tellraw.php?tellraw=%3Ca%20data-openurl%3D%22https%3A%2F%2Fgithub.com%2Fthat-mar%2FHenri_The_Datapack%2Freleases%2Flatest%22%20class%3D%22openurl%22%20href%3D%22https%3A%2F%2Fgithub.com%2Fthat-mar%2FHenri_The_Datapack%2Freleases%2Flatest%22%3E%3Cins%20data-text%3D%22Click%20here%20to%20go%20to%20the%20releases%20page%20on%20GitHub%20and%20see%20if%20there%20are%20newer%20versions%20available.%22%20class%3D%22text%22%3E%3Cspan%20style%3D%22color%3A%23AA0000%22%3ECurrent%20installed%20Henri%20version%20is%3A%26nbsp%3B%3C%2Fspan%3E%3Ccode%20data-player%3D%22Installed.big%22%20data-objective%3D%22HenriVersion%22%20data-scoreboard%3D%22Installed.big%C2%A7%C2%A7HenriVersion%22%20class%3D%22scoreboard%22%3EInstalled.big-%26gt%3BHenriVersion%3C%2Fcode%3E.%3Ccode%20data-player%3D%22Installed.dot%22%20data-objective%3D%22HenriVersion%22%20data-scoreboard%3D%22Installed.dot%C2%A7%C2%A7HenriVersion%22%20class%3D%22scoreboard%22%3EInstalled.dot-%26gt%3BHenriVersion%3C%2Fcode%3E.%3C%2Fins%3E%3C%2Fa%3E%3Ccode%20data-player%3D%22Installed.small%22%20data-objective%3D%22HenriVersion%22%20data-scoreboard%3D%22Installed.small%C2%A7%C2%A7HenriVersion%22%20class%3D%22scoreboard%22%3E%3Ca%20data-openurl%3D%22https%3A%2F%2Fgithub.com%2Fthat-mar%2FHenri_The_Datapack%2Freleases%2Flatest%22%20class%3D%22openurl%22%20href%3D%22https%3A%2F%2Fgithub.com%2Fthat-mar%2FHenri_The_Datapack%2Freleases%2Flatest%22%3E%3Cins%20data-text%3D%22Click%20here%20to%20go%20to%20the%20releases%20page%20on%20GitHub%20and%20see%20if%20there%20are%20newer%20versions%20available.%22%20class%3D%22text%22%3EInstalled.small-%26gt%3BHenriVersion%3C%2Fins%3E%3C%2Fa%3E%3C%2Fcode%3E%3Cbr%20%2F%3E%3Cbr%20%2F%3E%26nbsp%3B&selector=%40a%5Bscores%3D%7BHenriVersion%3D1..%7D%5D
# )
tellraw @a[scores={HenriVersion=1..}] ["",{"text":"Current installed Henri version is: ","color":"dark_red","clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"score":{"name":"Installed.big","objective":"HenriVersion"},"clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"text":".","clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"score":{"name":"Installed.dot","objective":"HenriVersion"},"clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"text":".","clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"score":{"name":"Installed.small","objective":"HenriVersion"},"clickEvent":{"action":"open_url","value":"https://github.com/that-mar/Henri_The_Datapack/releases/latest"},"hoverEvent":{"action":"show_text","contents":"Click here to go to the releases page on GitHub and see if there are newer versions available."}},{"text":"\n\n "}]
scoreboard players reset @a HenriVersion

# Trigger checker
execute as @a[scores={DoTheHenriCheat=1..}] run function henryhascheats:thehenricheat
scoreboard players reset @a DoTheHenriCheat

execute as @a[scores={SummonTheScaryGuy=1..}] run function henrys_potions:spawn_the_scary_guy
scoreboard players reset @a SummonTheScaryGuy

# Settings triggered

# -   Allow players to spawn Henri
#       /trigger enablehenryspawning
execute as @a[scores={enablehenryspawning=1..}] run data modify storage henridatapack enablespawning set value true
scoreboard players reset @a enablehenryspawning

#       /trigger disablehenryspawning
execute as @a[scores={disablehenryspawning=1..}] run data modify storage henridatapack enablespawning set value false
scoreboard players reset @a disablehenryspawning

# -   Autospawn
#       /trigger enablehenryautospawn
execute as @a[scores={enablehenryautospawn=1..}] run data modify storage henridatapack autospawn set value true
scoreboard players reset @a enablehenryautospawn

#       /trigger disablehenryautospawn
execute as @a[scores={disablehenryautospawn=1..}] run data modify storage henridatapack autospawn set value false
scoreboard players reset @a disablehenryautospawn
