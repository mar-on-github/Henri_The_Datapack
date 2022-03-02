# Set version
scoreboard objectives add CurrentHenriVersion dummy
scoreboard players set Installed.big CurrentHenriVersion 3
scoreboard players set Installed.dot CurrentHenriVersion 2
scoreboard players set Installed.small CurrentHenriVersion 0

# On first run init. settings.
execute unless data storage minecraft:henridatapack settingsinit run function henri:settings/default

# Set triggers
scoreboard objectives add DoTheHenriCheat trigger
scoreboard objectives add SummonTheScaryGuy trigger
scoreboard objectives add HenriVersion trigger

# Load necessary parts
execute if data storage minecraft:henridatapack {autospawn:1} run function henri:autospawn

# Set counters
scoreboard objectives add HenriActiveCounter dummy
scoreboard objectives add catlove dummy
