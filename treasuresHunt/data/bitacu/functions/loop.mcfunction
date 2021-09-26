#execute at @a run particle minecraft:bubble ~ ~2 ~ 0 0 0 0 1 normal
execute if score start timer matches 1 run function bitacu:timer/loop_timer
execute if score selTeam teams matches 1 run function bitacu:teams/loop_sel_team
