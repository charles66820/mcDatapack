# to execute raycast form 20 to 0
scoreboard players set .range loop_var 20

# when activator is used
execute if score @s activator_used matches 1.. at @s anchored eyes run function portal_system:check/raycast

# reset activator
scoreboard players reset @s activator_used


# count when players are in portal
scoreboard players add @s[tag=in_portal] countdown 1

# reset conter when players are not in portal
execute if score @s countdown matches 1.. run scoreboard players reset @s[tag=!in_portal] countdown

# when players countdown permite the portal teleportation
execute if score @s countdown matches 80..100 at @s run function portal_system:portal/warp
tag @s remove in_portal
