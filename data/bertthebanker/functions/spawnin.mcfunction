summon villager ~ ~1 ~ {Tags:[BertBanker],VillagerData:{profession:librarian,level:2,type:snow},Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:"\"Bert the Banker\"",Offers:{Recipes:[{buy:{id:player_head,tag:{display:{Name:"{\"text\":\"Bert's Banking Pass\"}",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},SkullOwner:"MrSnowDK"},Count:1},sell:{id:paper,Count:1,tag:{display:{Name:"\"Opened Bert account\"",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{OpenBertaccount:1},CanPlaceOn:["void"]}},rewardExp:0b,maxUses:9999999},{buy:{id:gold_ingot,Count:1},sell:{id:player_head,tag:{display:{Name:"{\"text\":\"Bert's Banking Pass\"}",Lore:["\"Go to Bert the Banker with this to open your account.\""]},NBT:{BertsBankingPass:1},SkullOwner:"MrSnowDK"},Count:1,rewardExp:0b,maxUses:9999999}},{buy:{id:gold_ingot,Count:1},sell:{id:emerald,Count:7},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:7},sell:{id:gold_ingot,Count:1},rewardExp:0b,maxUses:9999999}]}}
tag @e[tag=BertBanker,sort=random,limit=1] add TheRealBert
execute unless data storage minecraft:henridatapack {multipleberts:1} run kill @e[tag=BertBanker,tag=!TheRealBert]
tag @e remove TheRealBert
