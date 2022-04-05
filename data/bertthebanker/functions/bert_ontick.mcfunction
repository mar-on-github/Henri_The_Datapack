# Detect opened bank accounts.
execute as @a[nbt={Inventory:[{id:paper,Count:1,tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}}]}] run function bertthebanker:banking

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

# Set up new players with a starting capital
execute as @a unless entity @s[scores={Bert_Welcomed=1..}] run scoreboard players add @s Berts_Banking_Credit 150
execute as @a unless entity @s[scores={Bert_Welcomed=1..}] run scoreboard players add @s Bert_Welcomed 1
