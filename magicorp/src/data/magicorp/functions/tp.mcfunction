# make sure all player have `tp` or `notTp` tag
execute as @e[type=minecraft:player] unless entity @s[tag=tp] unless entity @s[tag=notTp] run tag @s add tp
# make `toggleTp` triggerable
scoreboard players enable @a toggleTp

# set in creative
execute as @e[type=minecraft:player,gamemode=survival] run gamemode creative @s

# tp
execute as @e[type=minecraft:player,tag=tp] run teleport @s 0 80 0 -64 32

# enable tp
execute as @e[type=minecraft:player,scores={toggleTp=0}] run tellraw @s [{"text":"Stop tp","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger toggleTp set 1"},"hoverEvent":{"action":"show_text","value":"Cliquer"}}]
execute as @e[type=minecraft:player,scores={toggleTp=0}] run tag @s add tp
execute as @e[type=minecraft:player,scores={toggleTp=0}] run tag @s remove notTp
execute as @e[type=minecraft:player,scores={toggleTp=0}] run scoreboard players set @s toggleTp 2

# disable tp
execute as @e[type=minecraft:player,scores={toggleTp=1}] run tellraw @s [{"text":"Start tp","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger toggleTp set 0"},"hoverEvent":{"action":"show_text","value":"Cliquer"}}]
execute as @e[type=minecraft:player,scores={toggleTp=1}] run tag @s add notTp
execute as @e[type=minecraft:player,scores={toggleTp=1}] run tag @s remove tp
execute as @e[type=minecraft:player,scores={toggleTp=1}] run scoreboard players set @s toggleTp 2
