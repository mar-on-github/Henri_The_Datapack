# Show the menu header
tellraw @s ["",{"text":"=============================","obfuscated":true},{"text":"\n"},{"text":"~","obfuscated":true},{"text":"         Bert's Bank ","italic":true,"color":"blue"},{"text":"          ~","obfuscated":true},{"text":"\n"},{"text":"=============================","obfuscated":true},{"text":"\n\nWelcome, "},{"selector":"@p","color":"dark_aqua"},{"text":"! Your balance today is "},{"text":"\u1368","bold":true,"color":"green"},{"score":{"name":"@p","objective":"Berts_Banking_Credit"},"bold":true},{"text":".\n "}]
tellraw @s "Options:"
tellraw @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] ["",{"text":"\u2b27 ","color":"blue"},{"text":"Deposit all","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Deposit_All"}}]
tellraw @s[scores={Berts_Banking_Credit=-50..}] ["",{"text":"\u2b27 Withdraw amount:\n    \u25b6 ","color":"blue"},{"text":"Withdraw ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 10"}},{"text":"\u1368","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 10"}},{"text":"10","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 10"}},{"text":"\n"},{"text":"    \u25b6 ","color":"blue"},{"text":"Withdraw ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 50"}},{"text":"\u1368","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 50"}},{"text":"50","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 50"}},{"text":"\n"},{"text":"    \u25b6 ","color":"blue"},{"text":"Withdraw ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 100"}},{"text":"\u1368","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 100"}},{"text":"100","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 100"}},{"text":"\n"},{"text":"    \u25b6 ","color":"blue"},{"text":"Withdraw ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 150"}},{"text":"\u1368","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 150"}},{"text":"150","color":"blue","clickEvent":{"action":"run_command","value":"/trigger Bert_Withdraw set 150"}},{"text":"\n    \u25b6 ","color":"blue"},{"text":"Withdraw custom amount...","color":"blue","clickEvent":{"action":"suggest_command","value":"/trigger Bert_Withdraw set"}}]
tellraw @s "- End of options"
# After opening the menu, deactivate the banking pass.
clear @s minecraft:paper{NBT:{OpenBertaccount:1}}
give @s minecraft:player_head{display:{Name:"{\"text\":\"Bert's Banking Pass\"}",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},SkullOwner:"MrSnowDK"} 1
