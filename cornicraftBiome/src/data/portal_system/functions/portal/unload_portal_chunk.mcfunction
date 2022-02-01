# unload chunk
execute as @e[type=minecraft:glow_item_frame,tag=portal,distance=..2] at @s in magicorp:erebus run forceload remove ~-1 ~-1 ~1 ~1
execute as @e[type=minecraft:glow_item_frame,tag=portal,distance=..2] at @s run forceload remove ~-1 ~-1 ~1 ~1
