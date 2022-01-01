setblock ~ ~ ~ air

scoreboard players set .range dim_portals 0
scoreboard players set .check dim_portals 1
scoreboard players set .failed dim_portals 1

### X basis Portals
execute if score .check dim_portals matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~ run function portal_system:portal_shape_x
execute if score .check portal_system matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~-1 ~ ~ run function portal_system:portal_shape_x
execute if score .check portal_system matches 1.. positioned ~ ~2 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~ run function portal_system:portal_shape_x
execute if score .check portal_system matches 1.. positioned ~ ~2 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~-1 ~ ~ run function portal_system:portal_shape_x
execute if score .check portal_system matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~4 ~ run function portal_system:portal_shape_x
execute if score .check portal_system matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~-1 ~4 ~ run function portal_system:portal_shape_x

### Z basis Portals
execute if score .check portal_system matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~ run function portal_system:portal_shape_z
execute if score .check portal_system matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~-1 run function portal_system:portal_shape_z
execute if score .check portal_system matches 1.. positioned ~ ~2 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~ run function portal_system:portal_shape_z
execute if score .check portal_system matches 1.. positioned ~ ~2 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~ ~-1 run function portal_system:portal_shape_z
execute if score .check portal_system matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~4 ~ run function portal_system:portal_shape_z
execute if score .check portal_system matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ #portal_system:portal_frames positioned ~ ~4 ~-1 run function dim_portals:portal_shape_z