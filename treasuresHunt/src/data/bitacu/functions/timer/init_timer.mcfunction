# timer initializing
scoreboard objectives add timer dummy
# scoreboard players add 0 timer 0
scoreboard players add 20_ticks timer 20
scoreboard players add ticks timer 0
scoreboard players add start timer 0

# Timer print initializing
scoreboard objectives add Timer dummy
scoreboard players add Seconds Timer 0
scoreboard players add Minutes Timer 0

execute if score Global debug matches 1 run say [debug] timer initialized!
