##
 # settings.mcfunction
 # 
 #
 # Created by MelonOnMain.
##



# tellraw commands for menu header
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s ["",{"text":"Henri The Datapack","color":"#556969"},{"text":" by "},{"text":"that_mar","color":"light_purple","clickEvent":{"action":"open_url","value":"https://storiesbymar.nl/"},"hoverEvent":{"action":"show_text","contents":"that is my ign! Click on it to head over to my site."}},{"text":" - "},{"text":"Settings","bold":true,"italic":1},{"text":"\n\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}]
tellraw @s {"text":"Reset all of these settings\n","underlined":true,"color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/function melononmain:henri_the_datapack/settings/default"},"hoverEvent":{"action":"show_text","contents":"Warning!This will reset all Henri-settings to default."}}
#tellraw @s {"text":"\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}

tellraw @s ["",{"text":"\nLet Henri spawn in by himself on datapack load","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {autospawn:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack autospawn set value 0"}}]
execute if data storage minecraft:henridatapack {autospawn:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack autospawn set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}


tellraw @s ["",{"text":"\nLet all players spawn in Henri","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {enablespawning:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enablespawning set value 0"}}]
execute if data storage minecraft:henridatapack {enablespawning:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enablespawning set value 1"}}]
tellraw @s {"text":"Default: Disabled","color":"gray"}

tellraw @s ["",{"text":"\nLet all players use Henri's cheat toolbox","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {henricheatenabled:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henricheatenabled set value 0"}}]
execute if data storage minecraft:henridatapack {henricheatenabled:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henricheatenabled set value 1"}}]
tellraw @s {"text":"Default: Disabled","color":"gray"}

tellraw @s ["",{"text":"\nAllow multiple Henri's in this game","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {MultipleHenris:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack MultipleHenris set value 0"}}]
execute if data storage minecraft:henridatapack {MultipleHenris:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack MultipleHenris set value 1"}}]
tellraw @s {"text":"Default: Disabled","color":"gray"}

tellraw @s ["",{"text":"\nEnable Henri-active","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {enableactive:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enableactive set value 0"}}]
execute if data storage minecraft:henridatapack {enableactive:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enableactive set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}

execute if data storage minecraft:henridatapack {enableactive:1} run tellraw @s ["",{"text":"\nEnable Henri anger explosions","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {enableactive:1} run execute if data storage minecraft:henridatapack {angerexplosions:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack angerexplosions set value 0"}}]
execute if data storage minecraft:henridatapack {enableactive:1} run execute if data storage minecraft:henridatapack {angerexplosions:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack angerexplosions set value 1"}}]
execute if data storage minecraft:henridatapack {enableactive:1} run tellraw @s {"text":"Default: Disabled","color":"gray"}


tellraw @s ["",{"text":"\nAllow Henri to take care (and enhance some minecraft animals)","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {henrysanimals:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henrysanimals set value 0"}}]
execute if data storage minecraft:henridatapack {henrysanimals:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henrysanimals set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}


tellraw @s ["",{"text":"\nAllow Henri's friend, Bert the Banker, to join the game.","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {bertthebanker:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack bertthebanker set value 0"}}]
execute if data storage minecraft:henridatapack {bertthebanker:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack bertthebanker set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}
execute if data storage minecraft:henridatapack {bertthebanker:1} run tellraw @s ["",{"text":"Go to Bert Settings","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function bertthebanker:settings"}}]

# version display
execute as @s run trigger HenriVersion
