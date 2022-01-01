execute as @a[gamemode=!spectator] run function portal_system:check/player_stores_check
execute as @e[type=item_frame,tag=portal] at @s run function portal_system:portal/portals_loop