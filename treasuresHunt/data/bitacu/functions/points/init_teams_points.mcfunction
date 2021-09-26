# init point scoreboard points
scoreboard objectives add points dummy

# for yellow team
scoreboard players set ironY points 0
scoreboard players set goldY points 0
scoreboard players set emeraldY points 0
scoreboard players set diamondY points 0

scoreboard players set pointsY points 0

# for red team
scoreboard players set ironR points 0
scoreboard players set goldR points 0
scoreboard players set emeraldR points 0
scoreboard players set diamondR points 0

scoreboard players set pointsR points 0

# for green team
scoreboard players set ironG points 0
scoreboard players set goldG points 0
scoreboard players set emeraldG points 0
scoreboard players set diamondG points 0

scoreboard players set pointsG points 0

# for blue team
scoreboard players set ironB points 0
scoreboard players set goldB points 0
scoreboard players set emeraldB points 0
scoreboard players set diamondB points 0

scoreboard players set pointsB points 0

# tmp vars
scoreboard players set tmpCount points 0
scoreboard players set ironMulti points 10
scoreboard players set goldMulti points 50
scoreboard players set emeraldMulti points 300
scoreboard players set diamondMulti points 100

execute if score Global debug matches 1 run say [debug] points initialized!
