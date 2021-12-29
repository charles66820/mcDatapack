execute in minecraft:overworld positioned ~-10 63 ~-10 if entity @e[type=minecraft:player,dx=20,dy=200,dz=20] run scoreboard objectives setdisplay sidebar deathCount
execute in minecraft:overworld positioned ~-10 63 ~-10 unless entity @e[type=minecraft:player,dx=20,dy=200,dz=20] run scoreboard objectives setdisplay sidebar
