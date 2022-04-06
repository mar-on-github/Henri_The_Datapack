# Detect opened bank accounts.
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:paper",Count:1b,tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}}]}] run function bertthebanker:banking

# Full fast-deposition of all emeralds would run using this.
tag @a[scores={Bert_Deposit_All=1..},nbt={Inventory:[{id:"minecraft:emerald",Count:64b}]}] add FastDepos
execute as @a[tag=FastDepos] run scoreboard players add @s Berts_Banking_Credit 64
clear @a[tag=FastDepos] emerald 64
tag @a[tag=FastDepos] remove FastDepos

# Full deposition of all emeralds would run using this.
execute as @a[scores={Bert_Deposit_All=1..},nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s Berts_Banking_Credit 1
clear @a[scores={Bert_Deposit_All=1..}] emerald 1
execute as @a[scores={Bert_Deposit_All=1..},nbt=!{Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players reset @s Bert_Deposit_All

execute as @a[scores={Bert_Withdraw=1..}] run scoreboard players remove @s Berts_Banking_Credit 1
give @a[scores={Bert_Withdraw=1..}] emerald 1
execute as @a[scores={Bert_Withdraw=1..}] run scoreboard players remove @s Bert_Withdraw 1


# Allow users to run the Bert triggers.
scoreboard players enable @a Bert_Deposit_All
scoreboard players enable @a[scores={Berts_Banking_Credit=-50..}] Bert_Withdraw
execute unless data storage minecraft:henridatapack {summonbert:0} run scoreboard players enable @a SummonBert

# Set up new players with a starting capital
execute as @a unless entity @s[scores={Bert_Welcomed=1..}] run scoreboard players set @s Berts_Banking_Credit 150
execute as @a unless entity @s[scores={Bert_Welcomed=1..}] run tellraw @s ["",{"text":"<"},{"selector":"@e[tag="},{"text":"BertBanker"},{"selector":"]"},{"text":"> Hi there! If you want, get me a golden ingot and I'll give you a banking pass in return. And because my friend Henri insisted on it, I'll give you a starting amount of "},{"text":"\u1368150","bold":true,"color":"green"}]
execute as @a unless entity @s[scores={Bert_Welcomed=1..}] run scoreboard players add @s Bert_Welcomed 1

# Will the real Bert-Banker please stand up?
tag @e[tag=BertBanker,sort=random,limit=1] add TheRealBert
execute unless data storage minecraft:henridatapack {multipleberts:1} run kill @e[tag=BertBanker,tag=!TheRealBert]
tag @e remove TheRealBert

# Summon Bert, quick!
execute unless data storage minecraft:henridatapack {summonbert:0} run execute as @a[scores={SummonBert=1..}] run tag @s add SummonedBert
execute unless data storage minecraft:henridatapack {summonbert:0} run execute as @a[scores={SummonBert=1..}] run tellraw @s "Bert is on their way!"
execute unless data storage minecraft:henridatapack {summonbert:0} run execute as @a[scores={SummonBert=1..}] run schedule function bertthebanker:bertsummoned 3s
execute as @a[scores={SummonBert=1..}] run scoreboard players reset @s SummonBert
