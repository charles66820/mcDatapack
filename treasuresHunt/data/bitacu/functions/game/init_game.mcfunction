scoreboard players set Global debug 0

function bitacu:game/rm_game

function bitacu:build/set_origin

function bitacu:build/init_build
function bitacu:timer/init_timer
function bitacu:points/init_teams_points
function bitacu:teams/init_teams
function bitacu:teams/init_sel_team

execute if score Global debug matches 1 run say [debug] game initialized!

gamemode adventure @a
execute at @e[type=minecraft:armor_stand,name=origin] run teleport @a ~ ~78 ~
