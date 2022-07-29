tellraw @s "Hi! These settings aren't available yet. If necessary, they'll be available in next versions."

tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s ["",{"text":"Henri The Datapack > Bert","color":"#556969"},{"text":" by "},{"text":"that_mar","color":"light_purple","clickEvent":{"action":"open_url","value":"https://storiesbymar.nl/"},"hoverEvent":{"action":"show_text","contents":"that is my ign! Click on it to head over to my site."}},{"text":" - "},{"text":"Settings","bold":true,"italic":1},{"text":"\n\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261\u2261"}]
tellraw @s {"text":"Reset all of these settings\n","underlined":true,"color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/function bertthebanker:settings/default"},"hoverEvent":{"action":"show_text","contents":"Warning! This will reset all bertthebanker-settings to default."}}

tellraw @s ["",{"text":"\nTo disable Bert entirely, go to","color":"red"},{"text":" ","color":"dark_red"},{"text":"Henri's settings","color":"blue","clickEvent":{"action":"run_command","value":"/function melononmain:henri_the_datapack/settings"}},{"text":" and disable Bert.","color":"red"}]

tellraw @s ["",{"text":"\nAllow multiple Berts to walk around in one game.","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {multipleberts:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack multipleberts set value 0"}}]
execute if data storage minecraft:henridatapack {multipleberts:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack multipleberts set value 1"}}]
tellraw @s {"text":"Default: Disabled","color":"gray"}

tellraw @s ["",{"text":"\nLet Bert travel around the worlds to drop by various players, even when they're distanced far from each other.","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {bertravels:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack bertravels set value 0"}}]
execute if data storage minecraft:henridatapack {bertravels:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack bertravels set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}

tellraw @s ["",{"text":"\nAllow players to summon Bert by triggering [SummonBert].","italic":true,"color":"aqua"}]
execute if data storage minecraft:henridatapack {summonbert:1} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"enabled","italic":true,"color":"green"},{"text":") ","italic":true},{"text":"DISABLE","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack summonbert set value 0"}}]
execute if data storage minecraft:henridatapack {summonbert:0} run tellraw @s ["",{"text":"(Is currently ","italic":true},{"text":"disabled","italic":true,"color":"dark_red"},{"text":") ","italic":true},{"text":"ENABLE","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/data modify storage henridatapack summonbert set value 1"}}]
tellraw @s {"text":"Default: Enabled","color":"gray"}

execute as @s run trigger HenriVersion
