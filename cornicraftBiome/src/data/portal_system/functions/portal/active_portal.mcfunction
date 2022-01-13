setblock ~ ~1 ~ minecraft:air
execute unless entity @e[tag=portal,dx=0] run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["portal", "erebus"],Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{CustomModelData:1}}}

execute as @e[type=minecraft:glow_item_frame,tag=portal,dx=0] at @s in magicorp:erebus run forceload add ~-1 ~-1 ~1 ~1
execute as @e[type=minecraft:glow_item_frame,tag=portal,dx=0] at @s run forceload add ~-1 ~-1 ~1 ~1
