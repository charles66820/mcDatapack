scoreboard objectives add teams dummy
scoreboard objectives add Teams dummy
scoreboard objectives setdisplay sidebar Teams

# vars
scoreboard players set JoueursPrêts Teams 0
scoreboard players set canReady teams 0

# rm last tags
tag @a remove ready
tag @a remove inTeam
tag @a remove leave
tag @a add notReady

# init trigger for vote redy or not ready
scoreboard objectives add ready trigger

# allow loop of team selection
scoreboard players set selTeam teams 1

execute if score Global debug matches 1 run say [debug] teams selection initialized!
