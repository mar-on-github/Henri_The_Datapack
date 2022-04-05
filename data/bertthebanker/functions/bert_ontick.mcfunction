# Detect opened bank accounts.
execute as @a[nbt={Inventory:[{id:paper,Count:1,tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}}]}] run function bertthebanker:banking

# Full deposition of all emeralds would run using this.
execute as @a[scores={Bert_Deposit_All=1..},nbt={Inventory:[{id:emerald}]}] run scoreboard players add @s Berts_Banking_Credit 1
clear @a[scores={Bert_Deposit_All=1..}] emerald 1
execute as @a[scores={Bert_Deposit_All=1..},nbt=!{Inventory:[{id:emerald}]}] run scoreboard players reset @s Bert_Deposit_All

# Accounts that are in debt will auto-deposit to even that.
execute as @a[scores={Berts_Banking_Credit=..-1},nbt={Inventory:[{id:emerald}]}] run scoreboard players add @s Berts_Banking_Credit 1
tellraw @a[scores={Berts_Banking_Credit=..-1},nbt={Inventory:[{id:emerald}]}] {"text":"The Emerald you held there was automatically deposed to pay your debt to Bert.","color":"dark_red"}
clear @a[scores={Berts_Banking_Credit=..-1}] emerald 1
