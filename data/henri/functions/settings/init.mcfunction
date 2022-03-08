# First set them to config v1's standards
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack enablespawning set value 0
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack autospawn set value 1
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack MultipleHenris set value 0
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack henricheatenabled set value 0
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack henrysanimals set value 1
data modify storage henridatapack settingsinit set value 1
# Now set for config v2
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack bertthebanker set value 1
execute unless data storage minecraft:henridatapack settingsinit run data modify storage henridatapack enableactive set value 1
data modify storage henridatapack settingsinit set value 2
