# set set_bases
function bitacu:build/set_bases

# set center
function bitacu:build/set_center

# set lobby
function bitacu:build/set_lobby

# set spawn
execute at @e[type=minecraft:armor_stand,name=origin] run setworldspawn ~ ~77 ~
execute at @e[type=minecraft:armor_stand,name=origin] run spawnpoint @a ~ ~77 ~

# make sure for team selection
kill @e[type=minecraft:armor_stand,name=yellow]
kill @e[type=minecraft:armor_stand,name=red]
kill @e[type=minecraft:armor_stand,name=green]
kill @e[type=minecraft:armor_stand,name=blue]

# place reference for team selection
execute at @e[type=minecraft:armor_stand,name=origin] run summon minecraft:armor_stand ~-9 ~78 ~2 {NoGravity:1,Invisible:1,NoBasePlate:1,CustomName:"\"yellow\""}
execute at @e[type=minecraft:armor_stand,name=origin] run summon minecraft:armor_stand ~1 ~78 ~8 {NoGravity:1,Invisible:1,NoBasePlate:1,CustomName:"\"red\""}
execute at @e[type=minecraft:armor_stand,name=origin] run summon minecraft:armor_stand ~8 ~78 ~-1 {NoGravity:1,Invisible:1,NoBasePlate:1,CustomName:"\"green\""}
execute at @e[type=minecraft:armor_stand,name=origin] run summon minecraft:armor_stand ~-2 ~78 ~-9 {NoGravity:1,Invisible:1,NoBasePlate:1,CustomName:"\"blue\""}

say [debug] build initialized!
