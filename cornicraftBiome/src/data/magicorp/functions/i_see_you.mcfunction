execute if entity @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] at @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] run playsound magicorp:mordor ambient @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] ^ ^ ^
execute if entity @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] at @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] run tag @e[type=minecraft:player,tag=!inMordor,predicate=magicorp:in_mordor] add inMordor
execute if entity @e[type=minecraft:player,tag=inMordor,predicate=!magicorp:in_mordor] at @e[type=minecraft:player,tag=inMordor,predicate=!magicorp:in_mordor] run tag @e[type=minecraft:player,tag=inMordor,predicate=!magicorp:in_mordor] remove inMordor
