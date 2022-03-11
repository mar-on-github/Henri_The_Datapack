# Detect opened bank accounts.
tag @a remove HasBertAccountMenuOpen
execute as @a[team=!Admin,nbt={Inventory:[{id:blue_banner,Count:1,tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}}]}] run tag @s add HasBertAccountMenuOpen
give @a[tag=HasBertAccountMenuOpen] white_banner{BlockEntityTag:{Patterns:[{Pattern:"hhb",Color:11},{Pattern:"bl",Color:3}]},display:{Name:"\"Bert's Banking Pass\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},CanPlaceOn:["minecraft:void_air"]}
