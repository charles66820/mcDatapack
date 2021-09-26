function bitacu:chests/rm_loot_chest
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~-19 ~ minecraft:chest{LootTable:"bitacu:chest"} destroy
