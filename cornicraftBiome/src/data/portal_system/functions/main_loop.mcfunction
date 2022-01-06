# loop for player action check and player tp
execute as @a[gamemode=!spectator] run function portal_system:check/check_player_actions

# when a portal is destroy
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s if entity @s[tag=erebus] unless predicate portal_system:is_erebus_portal run forceload remove ~-1 ~-1 ~1 ~1
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s if entity @s[tag=erebus] unless predicate portal_system:is_erebus_portal in magicorp:erebus run forceload remove ~-1 ~-1 ~1 ~1
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s if entity @s[tag=erebus] unless predicate portal_system:is_erebus_portal run kill @s

# when a player are in portal
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s positioned ~-0.5 ~ ~-0.5 run tag @a[dx=0,dy=1,dz=0,gamemode=!spectator] add in_portal
