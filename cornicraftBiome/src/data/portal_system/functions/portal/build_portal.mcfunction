# build erebus portal
execute if entity @s[tag=erebus] run fill ~-1 ~1 ~-1 ~1 ~2 ~1 minecraft:air
execute if entity @s[tag=erebus] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:blackstone
execute if entity @s[tag=erebus] run setblock ~1 ~ ~ minecraft:deepslate
execute if entity @s[tag=erebus] run setblock ~-1 ~ ~ minecraft:deepslate
execute if entity @s[tag=erebus] run setblock ~ ~ ~1 minecraft:deepslate
execute if entity @s[tag=erebus] run setblock ~ ~ ~-1 minecraft:deepslate