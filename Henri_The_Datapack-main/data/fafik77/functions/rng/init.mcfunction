### fafik77 init

 #	add scores
scoreboard objectives add RNG_77 dummy "Random NumGen"
scoreboard objectives add RNG_77_rp minecraft.custom:minecraft.walk_one_cm "Random NumGen-walk"


 #	set initial scores
execute unless score #const2 RNG_77 matches 1.. run scoreboard players set #const2 RNG_77 3
scoreboard players add #prev_number RNG_77 0
scoreboard players set #m1 RNG_77 -1
scoreboard players add #clock_time RNG_77 1
 #	other scores: { clock_time, prev_number, number, max & min }
