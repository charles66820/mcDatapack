# create an area_effect_cloud for the destination
execute positioned ~ ~2 ~ run tag @e[type=minecraft:item_frame,tag=portal,sort=nearest,limit=1] add target_portal
execute at @e[type=minecraft:item_frame,tag=target_portal,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["portal_checker","this"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=portal_checker,limit=1] Tags append from entity @e[type=minecraft:item_frame,tag=target_portal,limit=1] Tags[]
tag @e remove target_portal

# teleporte portal_checker to destination
execute as @e[type=minecraft:area_effect_cloud,tag=portal_checker,limit=1] at @s in overworld run tp @s ~ ~ ~

# find destination portal
execute as @e[type=minecraft:area_effect_cloud,tag=portal_checker] at @s run function portal_system:portal/find_parent
