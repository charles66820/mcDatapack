execute if score Global debug matches 1 run say [debug] timer reseting...

# reset
scoreboard players set ticks timer 0
scoreboard players set Seconds Timer 0
scoreboard players set Minutes Timer 0
scoreboard players set start timer 0

execute if score Global debug matches 1 run say [debug] timer reset!
