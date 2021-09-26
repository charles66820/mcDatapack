# timer uninitialized
scoreboard objectives remove timer
scoreboard objectives remove Timer

execute if score Global debug matches 1 run say [debug] timer uninitialized!
