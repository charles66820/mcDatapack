# generate portal if it not exist
execute positioned ~ -64 ~ unless entity @e[type=minecraft:glow_item_frame,tag=portal,dy=384] at @s run execute positioned over motion_blocking_no_leaves run function portal_system:portal/generate_portal

# find linked portal and tp on it
execute positioned ~ -64 ~ at @e[type=minecraft:glow_item_frame,tag=portal,dy=384,sort=nearest,limit=1] positioned ~ ~0.1 ~ run tp @a[tag=this] ~ ~ ~

# remove the portal_checker
kill @s
