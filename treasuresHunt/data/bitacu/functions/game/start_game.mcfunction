gamemode survival @a
time set day
effect give @a minecraft:saturation 2 60
xp set @a 0 points
xp set @a 0 levels
clear @a
function bitacu:teams/rm_sel_team
function bitacu:timer/reset_timer
scoreboard objectives setdisplay sidebar Timer
function bitacu:chests/init_teams_chest
function bitacu:teams/set_teams
function bitacu:teams/tp_player
function bitacu:timer/start_timer
say Que le minage commence!
title @a subtitle ""
title @a title "Que le minage commence!"
