#schedule clear portal_system:portal/unload_portal_chunk

# load chunk
execute as @e[type=minecraft:glow_item_frame,tag=portal,distance=..2] at @s in magicorp:erebus run forceload add ~-1 ~-1 ~1 ~1
execute as @e[type=minecraft:glow_item_frame,tag=portal,distance=..2] at @s run forceload add ~-1 ~-1 ~1 ~1

schedule function portal_system:portal/unload_portal_chunk 60s
