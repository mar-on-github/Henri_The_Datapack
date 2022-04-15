summon villager ~ ~1 ~ {Tags:[BertBanker],VillagerData:{profession:librarian,level:2,type:snow},Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:"\"Bert the Banker\"",Offers:{Recipes:[{buy:{id:gold_ingot,Count:1},sell:{id:"minecraft:paper",Count:1b,tag:{NBT:{BertsBankingAcc:1},display:{Name:'[{"text":"A BertBanking account","italic":false}]'},Enchantments:[{}]},Count:1,rewardExp:0b,maxUses:5}},{buy:{id:gold_ingot,Count:1},sell:{id:emerald,Count:7},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:7},sell:{id:gold_ingot,Count:1},rewardExp:0b,maxUses:9999999}]}}
tag @e[tag=BertBanker,sort=random,limit=1] add TheRealBert
execute unless data storage minecraft:henridatapack {multipleberts:1} run kill @e[tag=BertBanker,tag=!TheRealBert]
tag @e remove TheRealBert
