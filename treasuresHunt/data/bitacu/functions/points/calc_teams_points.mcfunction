function bitacu:points/scan_all_teams_chest

# yellow
scoreboard players set pointsY points 0

scoreboard players operation tmpCount points = ironY points
scoreboard players operation tmpCount points *= ironMulti points
scoreboard players operation pointsY points += tmpCount points

scoreboard players operation tmpCount points = goldY points
scoreboard players operation tmpCount points *= goldMulti points
scoreboard players operation pointsY points += tmpCount points

scoreboard players operation tmpCount points = emeraldY points
scoreboard players operation tmpCount points *= emeraldMulti points
scoreboard players operation pointsY points += tmpCount points

scoreboard players operation tmpCount points = diamondY points
scoreboard players operation tmpCount points *= diamondMulti points
scoreboard players operation pointsY points += tmpCount points

# red
scoreboard players set pointsR points 0

scoreboard players operation tmpCount points = ironR points
scoreboard players operation tmpCount points *= ironMulti points
scoreboard players operation pointsR points += tmpCount points

scoreboard players operation tmpCount points = goldR points
scoreboard players operation tmpCount points *= goldMulti points
scoreboard players operation pointsR points += tmpCount points

scoreboard players operation tmpCount points = emeraldR points
scoreboard players operation tmpCount points *= emeraldMulti points
scoreboard players operation pointsR points += tmpCount points

scoreboard players operation tmpCount points = diamondR points
scoreboard players operation tmpCount points *= diamondMulti points
scoreboard players operation pointsR points += tmpCount points

# green
scoreboard players set pointsG points 0

scoreboard players operation tmpCount points = ironG points
scoreboard players operation tmpCount points *= ironMulti points
scoreboard players operation pointsG points += tmpCount points

scoreboard players operation tmpCount points = goldG points
scoreboard players operation tmpCount points *= goldMulti points
scoreboard players operation pointsG points += tmpCount points

scoreboard players operation tmpCount points = emeraldG points
scoreboard players operation tmpCount points *= emeraldMulti points
scoreboard players operation pointsG points += tmpCount points

scoreboard players operation tmpCount points = diamondG points
scoreboard players operation tmpCount points *= diamondMulti points
scoreboard players operation pointsG points += tmpCount points

# blue
scoreboard players set pointsB points 0

scoreboard players operation tmpCount points = ironB points
scoreboard players operation tmpCount points *= ironMulti points
scoreboard players operation pointsB points += tmpCount points

scoreboard players operation tmpCount points = goldB points
scoreboard players operation tmpCount points *= goldMulti points
scoreboard players operation pointsB points += tmpCount points

scoreboard players operation tmpCount points = emeraldB points
scoreboard players operation tmpCount points *= emeraldMulti points
scoreboard players operation pointsB points += tmpCount points

scoreboard players operation tmpCount points = diamondB points
scoreboard players operation tmpCount points *= diamondMulti points
scoreboard players operation pointsB points += tmpCount points
