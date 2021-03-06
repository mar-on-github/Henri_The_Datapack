### fafik77 :: on call rand() uses `RNG_77::min`, `RNG_77::max`

# { clock_time, prev_number, number, max }	const2

 # load last number to new
scoreboard players operation number RNG_77 = #prev_number RNG_77
scoreboard players operation number RNG_77 -= #const2 RNG_77
scoreboard players operation number RNG_77 *= #clock_time RNG_77
execute store result score #moreRand RNG_77 run data get entity @e[limit=1,sort=random] {}
scoreboard players operation #moreRand RNG_77 *= #clock_time RNG_77_rp
scoreboard players operation number RNG_77 -= #moreRand RNG_77_rp
scoreboard players operation #number2 RNG_77 = number RNG_77_rp
scoreboard players operation #number2 RNG_77 *= #const2 RNG_77_rp
scoreboard players operation #number2 RNG_77 /= #clock_time RNG_77_rp
scoreboard players operation #number2 RNG_77 %= #clock_time RNG_77_rp
scoreboard players operation number RNG_77 -= #number2 RNG_77_rp
# scoreboard players operation number RNG_77 /= #const2 RNG_77_rp
# scoreboard players operation number RNG_77 *= #clock_time RNG_77_rp
scoreboard players operation number RNG_77 += @r RNG_77_rp
scoreboard players operation number RNG_77 += #prev_number RNG_77


 # make not negative
execute if score number RNG_77 matches ..0 run scoreboard players operation number RNG_77 *= #m1 RNG_77
 # save new number to last
scoreboard players operation #prev_number RNG_77 = number RNG_77
scoreboard players operation #prev_number RNG_77 -= #clock_time RNG_77
scoreboard players operation #prev_number RNG_77 /= #const2 RNG_77

 # trim new number to <`min`, `max`>
scoreboard players operation max RNG_77 > min RNG_77
scoreboard players operation #max2 RNG_77 = max RNG_77
execute if score #max2 RNG_77 matches 1.. run scoreboard players add #max2 RNG_77 1
scoreboard players operation #max2 RNG_77 -= min RNG_77
execute if score max RNG_77 matches 1.. run scoreboard players operation number RNG_77 %= #max2 RNG_77
scoreboard players operation number RNG_77 += min RNG_77

 # reset it back to 0
scoreboard players set max RNG_77 0
scoreboard players set min RNG_77 0
