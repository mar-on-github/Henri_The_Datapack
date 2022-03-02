# they'll have to pay with everything they have, just to feel like a new person.
clear @p
effect clear @p

# weaponry
give @p wooden_sword{Unbreakable:1,Enchantments:[{id:sweeping,lvl:1000},{id:knockback,lvl:1000},{id:fire_aspect,lvl:1000},{id:mending,lvl:1000},{id:sharpness,lvl:1000},{id:looting,lvl:1000},{id:vanishing_curse,lvl:1000}]}
give @p minecraft:bow{Enchantments:[{id:punch,lvl:1000},{id:power,lvl:1000},{id:flame,lvl:1000},{id:looting,lvl:1000},{id:vanishing_curse,lvl:1000}]}
give @p arrow

# armor
item replace entity @p armor.head with minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:respiration,lvl:1000},{id:protection,lvl:1000},{id:fire_protection,lvl:1000},{id:blast_protection,lvl:1000},{id:aqua_affinity,lvl:1000},{id:vanishing_curse,lvl:1000},{id:binding_curse,lvl:1000}]}
item replace entity @p armor.chest with minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:protection,lvl:1000},{id:mending,lvl:1000},{id:fire_protection,lvl:1000},{id:blast_protection,lvl:1000},{id:vanishing_curse,lvl:1000},{id:binding_curse,lvl:1000}]}
item replace entity @p armor.legs with minecraft:iron_leggings{Unbreakable:1,Enchantments:[{id:protection,lvl:1000},{id:fire_protection,lvl:1000},{id:blast_protection,lvl:1000},{id:vanishing_curse,lvl:1000},{id:binding_curse,lvl:1000}]}
item replace entity @p armor.feet with minecraft:golden_boots{Unbreakable:1,Enchantments:[{id:protection,lvl:1000},{id:frost_walker,lvl:10},{id:fire_protection,lvl:1000},{id:feather_falling,lvl:1000},{id:depth_strider,lvl:1000},{id:blast_protection,lvl:1000},{id:vanishing_curse,lvl:1000},{id:binding_curse,lvl:1000}]}

# tools
give @p minecraft:wooden_axe{Unbreakable:1,Enchantments:[{id:efficiency,lvl:1000},{id:fortune,lvl:1000},{id:vanishing_curse,lvl:1000}]}
give @p minecraft:diamond_pickaxe{Unbreakable:1,Enchantments:[{id:efficiency,lvl:1000},{id:fortune,lvl:1000},{id:vanishing_curse,lvl:1000}]}
give @p minecraft:wooden_shovel{Unbreakable:1,Enchantments:[{id:efficiency,lvl:1000},{id:fortune,lvl:1000},{id:vanishing_curse,lvl:1000}]}
effect give @p minecraft:regeneration 1000000 255 true
effect give @p minecraft:saturation 1000000 255 true
effect give @p minecraft:health_boost 1000000 9 true
effect give @p minecraft:strength 1000000 255 true
tellraw @s "B-b-but babey, this is god's work!"
