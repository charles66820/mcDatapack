# init tp tag
execute as @e[type=minecraft:player] unless entity @e[tag=tp] unless entity @e[tag=notTp] run tag @s add tp
scoreboard players enable @a toggleTp

# tp
execute if entity @e[type=minecraft:player,tag=tp] as @e[type=minecraft:player,tag=tp] run teleport @s 24 227 -316 120 34

# enable tp
execute if entity @e[type=minecraft:player,scores={toggleTp=0}] as @e[type=minecraft:player,scores={toggleTp=0}] run tellraw @s [{"text":"Stop tp","clickEvent":{"action":"run_command","value":"/trigger toggleTp set 1"},"hoverEvent":{"action":"show_text","value":"Cliquer"}}]
execute if entity @e[type=minecraft:player,scores={toggleTp=0}] as @e[type=minecraft:player,scores={toggleTp=0}] run tag @s add tp
execute if entity @e[type=minecraft:player,scores={toggleTp=0}] as @e[type=minecraft:player,scores={toggleTp=0}] run tag @s remove notTp
execute if entity @e[type=minecraft:player,scores={toggleTp=0}] as @e[type=minecraft:player,scores={toggleTp=0}] run scoreboard players set @s toggleTp 2

# disable tp
execute if entity @e[type=minecraft:player,scores={toggleTp=1}] as @e[type=minecraft:player,scores={toggleTp=1}] run tellraw @s [{"text":"Start tp","clickEvent":{"action":"run_command","value":"/trigger toggleTp set 0"},"hoverEvent":{"action":"show_text","value":"Cliquer"}}]
execute if entity @e[type=minecraft:player,scores={toggleTp=1}] as @e[type=minecraft:player,scores={toggleTp=1}] run tag @s add notTp
execute if entity @e[type=minecraft:player,scores={toggleTp=1}] as @e[type=minecraft:player,scores={toggleTp=1}] run tag @s remove tp
execute if entity @e[type=minecraft:player,scores={toggleTp=1}] as @e[type=minecraft:player,scores={toggleTp=1}] run scoreboard players set @s toggleTp 2
