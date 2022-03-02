


# tellraw commands for menu header
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @p ["",{"text":"Henri The Datapack","color":"#556969"},{"text":" by "},{"text":"that_mar","color":"light_purple","clickEvent":{"action":"open_url","value":"https://storiesbymb.blog/"},"hoverEvent":{"action":"show_text","contents":"that is my ign! Click on it to head over to my site."}},{"text":" - "},{"text":"Settings","bold":true,"italic":1},{"text":"\n\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}]
tellraw @p {"text":"Reset all of these settings\n","underlined":true,"color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/function henri:settings/default"},"hoverEvent":{"action":"show_text","contents":"Warning!This will reset all Henri-settings to default."}}
#tellraw @p {"text":"\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}

tellraw @p ["",{"text":"Let Henri spawn in by himself on datapack load","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {autospawn:1} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack autospawn set value 0"}}]
execute if data storage minecraft:henridatapack {autospawn:0} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack autospawn set value 1"}}]
tellraw @p {"text":"Default: Enabled","color":"gray"}

tellraw @p ["",{"text":"Let all players spawn in Henri","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {enablespawning:1} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enablespawning set value 0"}}]
execute if data storage minecraft:henridatapack {enablespawning:0} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack enablespawning set value 1"}}]
tellraw @p {"text":"Default: Disabled","color":"gray"}

tellraw @p ["",{"text":"Let all players use Henri's cheat toolbox","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {henricheatenabled:1} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henricheatenabled set value 0"}}]
execute if data storage minecraft:henridatapack {henricheatenabled:0} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack henricheatenabled set value 1"}}]
tellraw @p {"text":"Default: Disabled","color":"gray"}

tellraw @p ["",{"text":"Allow multiple Henri's in this game","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {MultipleHenris:1} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack MultipleHenris set value 0"}}]
execute if data storage minecraft:henridatapack {MultipleHenris:0} run tellraw @p ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack MultipleHenris set value 1"}}]
tellraw @p {"text":"Default: Disabled","color":"gray"}

# version display
execute as @s run trigger HenriVersion
