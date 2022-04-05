# Show the menu header
tellraw @s ["",{"text":"=============================","obfuscated":true},{"text":"\n"},{"text":"~","obfuscated":true},{"text":" \u0020 \u0020 \u0020 \u0020 Bert's Bank ","italic":true,"color":"blue"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020~","obfuscated":true},{"text":"\n"},{"text":"=============================","obfuscated":true},{"text":"\n\nWelcome, "},{"selector":"@p"},{"text":"! Your balance today is "},{"text":"\u1368","bold":true,"color":"green"},{"score":{"name":"@p","objective":"Berts_Banking_Credit"},"bold":true},{"text":".\n "}]


# After opening the menu, deactivate the banking pass.
clear @s minecraft:paper{NBT:{OpenBertaccount:1}}
give @s white_banner{BlockEntityTag:{Patterns:[{Pattern:"hhb",Color:11},{Pattern:"bl",Color:3}]},display:{Name:"\"Bert's Banking Pass\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},CanPlaceOn:["minecraft:void_air"]}
