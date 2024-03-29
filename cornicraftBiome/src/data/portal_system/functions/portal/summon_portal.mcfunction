setblock ~ ~1 ~ minecraft:air

# portal entity
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["portal", "erebus"],Facing:0b,Invulnerable:1b,Invisible:1b,Fixed:1b}

# portal ghost
summon minecraft:snowball ~ ~ ~ {Tags:["erebus"],Invulnerable:1b,Motion:[0.0,0.0,0.0],NoGravity:1b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{CustomModelData:1}}}

# link ghost and portal entity
tp @e[type=minecraft:snowball,tag=erebus,distance=..2,sort=nearest,limit=1] @e[type=minecraft:glow_item_frame,tag=portal,distance=..2,sort=nearest,limit=1]

# summon minecraft:item_display ~ ~ ~ {Tags:["portal", "erebus"],Invulnerable:1b,item:{id:"minecraft:flint_and_steel",Count:1b,tag:{CustomModelData:1}},item_display:"ground",billboard:"center"}
# summon minecraft:item_display ~ ~ ~ {Tags:["portal", "erebus"],Invulnerable:1b,item:{id:"minecraft:flint_and_steel",Count:1b,tag:{CustomModelData:1}},item_display:"gui",billboard:"center"}
# summon minecraft:item_display ~ ~ ~ {Tags:["portal", "erebus"],Invulnerable:1b,item:{id:"minecraft:flint_and_steel",Count:1b,tag:{CustomModelData:1}},item_display:"head",billboard:"center"}

execute at @e[type=minecraft:snowball,tag=erebus,distance=..2,sort=nearest,limit=1] run tp @e[type=minecraft:snowball,tag=erebus,distance=..2,sort=nearest,limit=1] ~ ~0.5 ~
