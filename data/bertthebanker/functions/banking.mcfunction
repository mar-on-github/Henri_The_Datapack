# After opening the menu, deactivate the banking pass.
clear @s minecraft:paper{NBT:{OpenBertaccount:1}}
give @s white_banner{BlockEntityTag:{Patterns:[{Pattern:"hhb",Color:11},{Pattern:"bl",Color:3}]},display:{Name:"\"Bert's Banking Pass\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},CanPlaceOn:["minecraft:void_air"]}
