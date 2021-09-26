# center
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~-16 ~ ~-16 minecraft:structure_block{mode:"LOAD",name:"bitacu:center",posY:-22}
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~-16 ~1 ~-16 minecraft:redstone_block
execute at @e[type=minecraft:armor_stand,name=origin] run fill ~-16 ~ ~-16 ~-16 ~1 ~-16 minecraft:air
