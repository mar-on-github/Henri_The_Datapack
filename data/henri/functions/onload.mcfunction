# Set version
scoreboard objectives add CurrentHenriVersion dummy
scoreboard players set Installed.big CurrentHenriVersion 5
scoreboard players set Installed.dot CurrentHenriVersion 1
scoreboard players set Installed.small CurrentHenriVersion 0

# On first run init. settings.
execute unless data storage minecraft:henridatapack {settingsinit:3} run function henri:settings/init

# Set triggers
scoreboard objectives add DoTheHenriCheat trigger
scoreboard objectives add SummonTheScaryGuy trigger
scoreboard objectives add HenriVersion trigger

# Load necessary parts
execute if data storage minecraft:henridatapack {autospawn:1} run function henri:autospawn
execute unless data storage minecraft:henridatapack {bertthebanker:0} run function bertthebanker:bert_onload

# (Re)Set counters
scoreboard objectives add HenriActiveCounter dummy
scoreboard players reset @e HenriActiveCounter
scoreboard objectives add HenriActitivityTracker dummy
scoreboard objectives add catlove dummy
