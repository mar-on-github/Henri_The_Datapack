##
 # reset.mcfunction
 # 
 #
 # Created by MelonOnMain.
##
# Create triggerable scoreboards
scoreboard objectives add Bert_Deposit_All trigger
scoreboard objectives add Bert_Withdraw trigger
scoreboard objectives add SummonBert trigger "Get Bert to you, asap"
scoreboard objectives add BertBankApp trigger "Open Bert Banking app"

# Create other scoreboards

scoreboard objectives add Berts_Banking_Credit dummy
scoreboard objectives add Bert_Welcomed dummy

# Make Bert travel around the map
execute unless data storage minecraft:henridatapack {bertravels:0} run function bertthebanker:berttravels
