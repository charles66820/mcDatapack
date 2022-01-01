scoreboard players set .check dim_portals 0

# reset counte ?
scoreboard players operation .check dim_portals += @s dimp_flsteel

execute if score .check dim_portals matches 1.. at @s run function portal_system:check/to_frame

# reset action ?
scoreboard players reset @s dimp_flsteel

scoreboard players add @s[tag=dim_warp] dim_portals 1
execute if score @s dim_portals matches 1.. run scoreboard players reset @s[tag=!dim_warp] dim_portals
execute if score @s dim_portals matches 80..100 at @s run function portal_system:portal/warp
tag @s remove dim_warp