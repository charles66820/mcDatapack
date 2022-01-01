scoreboard players remove .range dim_portals 1
execute if block ~ ~ ~ #portal_system:portal_activator run function portal_system:check/portal
execute if score .range dim_portals matches 1.. unless block ~ ~ ~ #portal_system:portal_activator positioned ^ ^ ^0.25 run function portal_system:check/raycast