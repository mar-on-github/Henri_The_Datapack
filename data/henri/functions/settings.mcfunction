# Make the settings available to whoever just opened the settings screen
scoreboard players enable @s enablehenrispawning
scoreboard players enable @s disablehenrispawning
scoreboard players enable @s enableHenriautospawn
scoreboard players enable @s disableHenriautospawn


# tellraw command for menu header
tellraw @p ["",{"text":"Henri The Datapack","color":"dark_blue"},{"text":" by "},{"text":"that_mar","color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.com/channels/@me/852483434844258324"},"hoverEvent":{"action":"show_text","contents":"that is my ign! Click on it to DM me on Discord."}},{"text":" - "},{"text":"Settings","bold":true,"italic":true},{"text":"\n\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}]

tellraw @p ["",{"text":"Let users spawn in Henri","italic":true,"color":"dark_blue"},{"text":" - "},{"text":"enable","color":"green","clickEvent":{"action":"run_command","value":"/trigger enablehenrispawning"}},{"text":" \u2507","obfuscated":true},{"text":" "},{"text":"disable","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger disablehenrispawning"}}]
execute if data storage minecraft:henridatapack {enablespawning:true} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":")","italic":true}]
execute if data storage minecraft:henridatapack {enablespawning:false} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":")","italic":true}]
# version display
execute as @s run trigger henriversion
