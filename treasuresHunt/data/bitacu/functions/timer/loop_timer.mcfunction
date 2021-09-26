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
execute if score Minutes Timer matches 9 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Le coffre d'arène apparaîtra dans 5 seconde!
execute if score Minutes Timer matches 9 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 9 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 9 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 9 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run say Le coffre d'arène est apparu!
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 10 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 2
execute if score Minutes Timer matches 19 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Le coffre d'arène ré-apparaîtra dans 5 seconde!
execute if score Minutes Timer matches 19 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 19 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 19 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 19 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run say Le coffre d'arène est ré-apparu!
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 20 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 3
execute if score Minutes Timer matches 29 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Le coffre d'arène ré-apparaîtra dans 5 seconde!
execute if score Minutes Timer matches 29 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 29 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 29 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 29 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run say Le coffre d'arène est ré-apparu!
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 30 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 4
execute if score Minutes Timer matches 39 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Le coffre d'arène ré-apparaîtra dans 5 seconde!
execute if score Minutes Timer matches 39 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 39 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 39 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 39 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run say Le coffre d'arène est ré-apparu!
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 40 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# summon chest 5
execute if score Minutes Timer matches 49 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Le coffre d'arène ré-apparaîtra dans 5 seconde!
execute if score Minutes Timer matches 49 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 49 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 49 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 49 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run say Le coffre d'arène est ré-apparu!
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "Coffre d'arène"
execute if score Minutes Timer matches 50 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rand_chest

# game over
execute if score Minutes Timer matches 59 if score Seconds Timer matches 55 if score ticks timer matches 0 run say Fin de la partie dans 5 seconde!
execute if score Minutes Timer matches 59 if score Seconds Timer matches 56 if score ticks timer matches 0 run say 4 secondes!
execute if score Minutes Timer matches 59 if score Seconds Timer matches 57 if score ticks timer matches 0 run say 3 secondes!
execute if score Minutes Timer matches 59 if score Seconds Timer matches 58 if score ticks timer matches 0 run say 2 secondes!
execute if score Minutes Timer matches 59 if score Seconds Timer matches 59 if score ticks timer matches 0 run say 1 seconde!
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run say La partie est fini!
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run title @a title "C'est fini!"
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run gamemode spectator @a
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run scoreboard players set start timer 0
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:chests/rm_loot_chest
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:points/calc_teams_points
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:game/team_won
execute if score Minutes Timer matches 60 if score Seconds Timer matches 0 if score ticks timer matches 0 run function bitacu:points/show_teams_points
