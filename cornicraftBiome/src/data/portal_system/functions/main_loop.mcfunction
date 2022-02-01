# loop for player action check and player tp
execute as @a[gamemode=!spectator] run function portal_system:check/check_player_actions

# when a portal is destroy
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s if entity @s[tag=erebus] unless predicate portal_system:is_erebus_portal run function portal_system:portal/kill_portal
# when ghost is destroy
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s if entity @s[tag=erebus] unless entity @e[type=minecraft:snowball,tag=erebus,distance=..2,sort=nearest,limit=1] run kill @s

# when a player are in portal
execute as @e[type=minecraft:glow_item_frame,tag=portal] at @s positioned ~ ~ ~ run tag @a[distance=..1.1,gamemode=!spectator] add in_portal
