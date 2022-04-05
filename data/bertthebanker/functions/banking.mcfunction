# After opening the menu, deactivate the banking pass.
clear @s paper{tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}}]}
give @s white_banner{BlockEntityTag:{Patterns:[{Pattern:"hhb",Color:11},{Pattern:"bl",Color:3}]},display:{Name:"\"Bert's Banking Pass\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},CanPlaceOn:["minecraft:void_air"]}
