# Create triggerable scoreboards
scoreboard objectives add Bert_Deposit_All trigger
scoreboard objectives add Bert_Withdraw trigger

# Create other scoreboards

scoreboard objectives add Berts_Banking_Credit dummy
scoreboard objectives add Bert_Welcomed dummy

# Make Bert travel around the map
function bertthebanker:berttravels
