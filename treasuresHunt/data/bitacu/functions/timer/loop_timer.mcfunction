scoreboard players add ticks timer 1

# seconds
scoreboard players operation ticks timer %= 20_ticks timer
execute if score ticks timer matches 0 run scoreboard players add Seconds Timer 1

# sign points on top of team chest
execute if score ticks timer matches 0 run function bitacu:points/sign_points
execute if score ticks timer matches 10 run function bitacu:points/sign_points

# minutes
execute if score Seconds Timer matches 60 run scoreboard players add Minutes Timer 1
execute if score Seconds Timer matches 60 run scoreboard players set Seconds Timer 0

# summon chest 1
execute if score Minutes Timer matches 9 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène apparaîtra dans 5 seconde!"
execute if score Minutes Timer matches 9 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 9 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 9 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 9 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène est apparu!"
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 2
execute if score Minutes Timer matches 19 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène ré-apparaîtra dans 5 seconde!"
execute if score Minutes Timer matches 19 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 19 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 19 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 19 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène est ré-apparu!"
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 3
execute if score Minutes Timer matches 29 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène ré-apparaîtra dans 5 seconde!"
execute if score Minutes Timer matches 29 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 29 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 29 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 29 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène est ré-apparu!"
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 4
execute if score Minutes Timer matches 39 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène ré-apparaîtra dans 5 seconde!"
execute if score Minutes Timer matches 39 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 39 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 39 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 39 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène est ré-apparu!"
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 5
execute if score Minutes Timer matches 49 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène ré-apparaîtra dans 5 seconde!"
execute if score Minutes Timer matches 49 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 49 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 49 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 49 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "Le coffre d'arène est ré-apparu!"
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# game over
bossbar set bitacu:info color red
bossbar set bitacu:info max 60
bossbar set bitacu:info value 60
bossbar set bitacu:info name "Fin de la partie dans 60 secondes"
bossbar set bitacu:info visible true
scoreboard objectives remove Timer

execute if score Minutes Timer matches 59 if score Seconds Timer matches 1 if score ticks timer matches 0 run bossbar set bitacu:info value 59
execute if score Minutes Timer matches 59 if score Seconds Timer matches 1 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 59 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 2 if score ticks timer matches 0 run bossbar set bitacu:info value 58
execute if score Minutes Timer matches 59 if score Seconds Timer matches 2 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 58 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 3 if score ticks timer matches 0 run bossbar set bitacu:info value 57
execute if score Minutes Timer matches 59 if score Seconds Timer matches 3 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 57 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 4 if score ticks timer matches 0 run bossbar set bitacu:info value 56
execute if score Minutes Timer matches 59 if score Seconds Timer matches 4 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 56 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 5 if score ticks timer matches 0 run bossbar set bitacu:info value 55
execute if score Minutes Timer matches 59 if score Seconds Timer matches 5 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 55 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 6 if score ticks timer matches 0 run bossbar set bitacu:info value 54
execute if score Minutes Timer matches 59 if score Seconds Timer matches 6 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 54 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 7 if score ticks timer matches 0 run bossbar set bitacu:info value 53
execute if score Minutes Timer matches 59 if score Seconds Timer matches 7 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 53 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 8 if score ticks timer matches 0 run bossbar set bitacu:info value 52
execute if score Minutes Timer matches 59 if score Seconds Timer matches 8 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 52 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 9 if score ticks timer matches 0 run bossbar set bitacu:info value 51
execute if score Minutes Timer matches 59 if score Seconds Timer matches 9 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 51 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 10 if score ticks timer matches 0 run bossbar set bitacu:info value 50
execute if score Minutes Timer matches 59 if score Seconds Timer matches 10 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 50 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 11 if score ticks timer matches 0 run bossbar set bitacu:info value 49
execute if score Minutes Timer matches 59 if score Seconds Timer matches 11 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 49 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 12 if score ticks timer matches 0 run bossbar set bitacu:info value 48
execute if score Minutes Timer matches 59 if score Seconds Timer matches 12 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 48 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 13 if score ticks timer matches 0 run bossbar set bitacu:info value 47
execute if score Minutes Timer matches 59 if score Seconds Timer matches 13 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 47 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 14 if score ticks timer matches 0 run bossbar set bitacu:info value 46
execute if score Minutes Timer matches 59 if score Seconds Timer matches 14 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 46 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 15 if score ticks timer matches 0 run bossbar set bitacu:info value 45
execute if score Minutes Timer matches 59 if score Seconds Timer matches 15 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 45 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 16 if score ticks timer matches 0 run bossbar set bitacu:info value 44
execute if score Minutes Timer matches 59 if score Seconds Timer matches 16 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 44 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 17 if score ticks timer matches 0 run bossbar set bitacu:info value 43
execute if score Minutes Timer matches 59 if score Seconds Timer matches 17 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 43 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 18 if score ticks timer matches 0 run bossbar set bitacu:info value 42
execute if score Minutes Timer matches 59 if score Seconds Timer matches 18 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 42 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 19 if score ticks timer matches 0 run bossbar set bitacu:info value 41
execute if score Minutes Timer matches 59 if score Seconds Timer matches 19 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 41 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 20 if score ticks timer matches 0 run bossbar set bitacu:info value 40
execute if score Minutes Timer matches 59 if score Seconds Timer matches 20 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 40 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 21 if score ticks timer matches 0 run bossbar set bitacu:info value 39
execute if score Minutes Timer matches 59 if score Seconds Timer matches 21 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 39 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 22 if score ticks timer matches 0 run bossbar set bitacu:info value 38
execute if score Minutes Timer matches 59 if score Seconds Timer matches 22 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 38 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 23 if score ticks timer matches 0 run bossbar set bitacu:info value 37
execute if score Minutes Timer matches 59 if score Seconds Timer matches 23 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 37 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 24 if score ticks timer matches 0 run bossbar set bitacu:info value 36
execute if score Minutes Timer matches 59 if score Seconds Timer matches 24 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 36 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 25 if score ticks timer matches 0 run bossbar set bitacu:info value 35
execute if score Minutes Timer matches 59 if score Seconds Timer matches 25 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 35 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 26 if score ticks timer matches 0 run bossbar set bitacu:info value 34
execute if score Minutes Timer matches 59 if score Seconds Timer matches 26 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 34 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 27 if score ticks timer matches 0 run bossbar set bitacu:info value 33
execute if score Minutes Timer matches 59 if score Seconds Timer matches 27 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 33 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 28 if score ticks timer matches 0 run bossbar set bitacu:info value 32
execute if score Minutes Timer matches 59 if score Seconds Timer matches 28 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 32 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 29 if score ticks timer matches 0 run bossbar set bitacu:info value 31
execute if score Minutes Timer matches 59 if score Seconds Timer matches 29 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 31 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 30 if score ticks timer matches 0 run bossbar set bitacu:info value 30
execute if score Minutes Timer matches 59 if score Seconds Timer matches 30 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 30 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 31 if score ticks timer matches 0 run bossbar set bitacu:info value 39
execute if score Minutes Timer matches 59 if score Seconds Timer matches 31 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 39 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 32 if score ticks timer matches 0 run bossbar set bitacu:info value 28
execute if score Minutes Timer matches 59 if score Seconds Timer matches 32 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 28 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 33 if score ticks timer matches 0 run bossbar set bitacu:info value 27
execute if score Minutes Timer matches 59 if score Seconds Timer matches 33 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 27 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 34 if score ticks timer matches 0 run bossbar set bitacu:info value 26
execute if score Minutes Timer matches 59 if score Seconds Timer matches 34 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 26 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 35 if score ticks timer matches 0 run bossbar set bitacu:info value 25
execute if score Minutes Timer matches 59 if score Seconds Timer matches 35 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 25 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 36 if score ticks timer matches 0 run bossbar set bitacu:info value 24
execute if score Minutes Timer matches 59 if score Seconds Timer matches 36 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 24 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 37 if score ticks timer matches 0 run bossbar set bitacu:info value 23
execute if score Minutes Timer matches 59 if score Seconds Timer matches 37 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 23 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 38 if score ticks timer matches 0 run bossbar set bitacu:info value 22
execute if score Minutes Timer matches 59 if score Seconds Timer matches 38 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 22 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 39 if score ticks timer matches 0 run bossbar set bitacu:info value 21
execute if score Minutes Timer matches 59 if score Seconds Timer matches 39 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 21 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 40 if score ticks timer matches 0 run bossbar set bitacu:info value 20
execute if score Minutes Timer matches 59 if score Seconds Timer matches 40 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 20 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 41 if score ticks timer matches 0 run bossbar set bitacu:info value 19
execute if score Minutes Timer matches 59 if score Seconds Timer matches 41 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 19 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 42 if score ticks timer matches 0 run bossbar set bitacu:info value 18
execute if score Minutes Timer matches 59 if score Seconds Timer matches 42 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 18 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 43 if score ticks timer matches 0 run bossbar set bitacu:info value 17
execute if score Minutes Timer matches 59 if score Seconds Timer matches 43 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 17 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 44 if score ticks timer matches 0 run bossbar set bitacu:info value 16
execute if score Minutes Timer matches 59 if score Seconds Timer matches 44 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 16 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 45 if score ticks timer matches 0 run bossbar set bitacu:info value 15
execute if score Minutes Timer matches 59 if score Seconds Timer matches 45 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 15 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 46 if score ticks timer matches 0 run bossbar set bitacu:info value 14
execute if score Minutes Timer matches 59 if score Seconds Timer matches 46 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 14 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 47 if score ticks timer matches 0 run bossbar set bitacu:info value 13
execute if score Minutes Timer matches 59 if score Seconds Timer matches 47 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 13 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 48 if score ticks timer matches 0 run bossbar set bitacu:info value 12
execute if score Minutes Timer matches 59 if score Seconds Timer matches 48 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 12 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 49 if score ticks timer matches 0 run bossbar set bitacu:info value 11
execute if score Minutes Timer matches 59 if score Seconds Timer matches 49 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 11 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 50 if score ticks timer matches 0 run bossbar set bitacu:info value 10
execute if score Minutes Timer matches 59 if score Seconds Timer matches 50 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 10 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 51 if score ticks timer matches 0 run bossbar set bitacu:info value 9
execute if score Minutes Timer matches 59 if score Seconds Timer matches 51 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 9 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 52 if score ticks timer matches 0 run bossbar set bitacu:info value 8
execute if score Minutes Timer matches 59 if score Seconds Timer matches 52 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 8 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 53 if score ticks timer matches 0 run bossbar set bitacu:info value 7
execute if score Minutes Timer matches 59 if score Seconds Timer matches 53 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 7 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 54 if score ticks timer matches 0 run bossbar set bitacu:info value 6
execute if score Minutes Timer matches 59 if score Seconds Timer matches 54 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 6 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 55 if score ticks timer matches 0 run bossbar set bitacu:info value 5
execute if score Minutes Timer matches 59 if score Seconds Timer matches 55 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 5 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 56 if score ticks timer matches 0 run bossbar set bitacu:info value 4
execute if score Minutes Timer matches 59 if score Seconds Timer matches 56 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 4 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 57 if score ticks timer matches 0 run bossbar set bitacu:info value 3
execute if score Minutes Timer matches 59 if score Seconds Timer matches 57 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 3 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 58 if score ticks timer matches 0 run bossbar set bitacu:info value 2
execute if score Minutes Timer matches 59 if score Seconds Timer matches 58 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 2 secondes"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 59 if score ticks timer matches 0 run bossbar set bitacu:info value 1
execute if score Minutes Timer matches 59 if score Seconds Timer matches 59 if score ticks timer matches 0 run bossbar set bitacu:info name "Fin de la partie dans 1 seconde"
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run bossbar set bitacu:info value 0
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run bossbar set bitacu:info name "La partie est fini!"

execute if score Minutes Timer matches 59 if score Seconds Timer matches 55 if score ticks timer matches 0 run tellraw @a "Fin de la partie dans 5 seconde!"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 56 if score ticks timer matches 0 run tellraw @a "4 secondes!"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 57 if score ticks timer matches 0 run tellraw @a "3 secondes!"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 58 if score ticks timer matches 0 run tellraw @a "2 secondes!"
execute if score Minutes Timer matches 59 if score Seconds Timer matches 59 if score ticks timer matches 0 run tellraw @a "1 seconde!"
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run tellraw @a "La partie est fini!"
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "C'est fini!"
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run gamemode spectator @a
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run scoreboard players set start timer 0
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rm_loot_chest
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:points/calc_teams_points
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:game/team_won
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:points/show_teams_points
