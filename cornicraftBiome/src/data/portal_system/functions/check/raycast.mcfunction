scoreboard players remove .range loop_var 1
execute if block ~ ~ ~ #portal_system:portal_activator run function portal_system:portal/active_portal
execute if score .range loop_var matches 1.. unless block ~ ~ ~ #portal_system:portal_activator positioned ^ ^ ^0.25 run function portal_system:check/raycast