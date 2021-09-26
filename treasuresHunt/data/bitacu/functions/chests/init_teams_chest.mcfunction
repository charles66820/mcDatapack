execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~-40 ~ ~ minecraft:air
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~ ~40 minecraft:air
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~40 ~ ~ minecraft:air
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~ ~-40 minecraft:air

execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~-40 ~ ~ minecraft:chest[facing=east]{CustomName:'{"text":"Équipe jaune"}'}
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~ ~40 minecraft:chest[facing=north]{CustomName:'{"text":"Équipe rouge"}'}
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~40 ~ ~ minecraft:chest[facing=west]{CustomName:'{"text":"Équipe vert"}'}
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~ ~-40 minecraft:chest[facing=south]{CustomName:'{"text":"Équipe bleu"}'}
