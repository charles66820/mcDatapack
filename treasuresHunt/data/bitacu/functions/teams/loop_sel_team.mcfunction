### if player leave ###
tag @a add leave

# if player leave team room
execute at @e[type=minecraft:armor_stand,name=yellow] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=-3] as @e[type=minecraft:player,dx=-3,dy=2,dz=-3] run tag @s remove leave
execute at @e[type=minecraft:armor_stand,name=red] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=3] as @e[type=minecraft:player,dx=-3,dy=2,dz=3] run tag @s remove leave
execute at @e[type=minecraft:armor_stand,name=green] if entity @e[type=minecraft:player,dx=3,dy=2,dz=3] as @e[type=minecraft:player,dx=3,dy=2,dz=3] run tag @s remove leave
execute at @e[type=minecraft:armor_stand,name=blue] if entity @e[type=minecraft:player,dx=3,dy=2,dz=-3] as @e[type=minecraft:player,dx=3,dy=2,dz=-3] run tag @s remove leave

execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run team leave @s
execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run tellraw @a [{"selector":"@s"},{"text":" est dans aucune équipe"}]

# if player leave team room all player can't be ready
execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run scoreboard players set canReady teams 0
execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run tag @a remove ready
execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run tag @a add notReady
execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run scoreboard players reset @a ready

execute as @e[type=minecraft:player,tag=leave] if entity @s[tag=inTeam] run tag @s remove inTeam

### counters ###
# count nb of players
execute store result score NombreDeJoueur Teams if entity @a

# count nb of players in team
execute run execute store result score JoueursDansUneÉquipe Teams if entity @e[tag=inTeam]

# count nb of players ready
execute run execute store result score JoueursPrêts Teams if entity @e[type=minecraft:player,tag=ready]

### test if player is in team ###
execute at @e[type=minecraft:armor_stand,name=yellow] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=-3] as @e[type=minecraft:player,dx=-3,dy=2,dz=-3] unless entity @s[tag=inTeam] run team join yellow @s
execute at @e[type=minecraft:armor_stand,name=yellow] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=-3] as @e[type=minecraft:player,dx=-3,dy=2,dz=-3] unless entity @s[tag=inTeam] run tellraw @a [{"selector":"@s"},{"text":" est dans l'équipe jaune"}]
execute at @e[type=minecraft:armor_stand,name=yellow] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=-3] as @e[type=minecraft:player,dx=-3,dy=2,dz=-3] unless entity @s[tag=inTeam] run tag @s add inTeam

execute at @e[type=minecraft:armor_stand,name=red] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=3] as @e[type=minecraft:player,dx=-3,dy=2,dz=3] unless entity @s[tag=inTeam] run team join red @s
execute at @e[type=minecraft:armor_stand,name=red] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=3] as @e[type=minecraft:player,dx=-3,dy=2,dz=3] unless entity @s[tag=inTeam] run tellraw @a [{"selector":"@s"},{"text":" est dans l'équipe rouge"}]
execute at @e[type=minecraft:armor_stand,name=red] if entity @e[type=minecraft:player,dx=-3,dy=2,dz=3] as @e[type=minecraft:player,dx=-3,dy=2,dz=3] unless entity @s[tag=inTeam] run tag @s add inTeam

execute at @e[type=minecraft:armor_stand,name=green] if entity @e[type=minecraft:player,dx=3,dy=2,dz=3] as @e[type=minecraft:player,dx=3,dy=2,dz=3] unless entity @s[tag=inTeam] run team join green @s
execute at @e[type=minecraft:armor_stand,name=green] if entity @e[type=minecraft:player,dx=3,dy=2,dz=3] as @e[type=minecraft:player,dx=3,dy=2,dz=3] unless entity @s[tag=inTeam] run tellraw @a [{"selector":"@s"},{"text":" est dans l'équipe vert"}]
execute at @e[type=minecraft:armor_stand,name=green] if entity @e[type=minecraft:player,dx=3,dy=2,dz=3] as @e[type=minecraft:player,dx=3,dy=2,dz=3] unless entity @s[tag=inTeam] run tag @s add inTeam

execute at @e[type=minecraft:armor_stand,name=blue] if entity @e[type=minecraft:player,dx=3,dy=2,dz=-3] as @e[type=minecraft:player,dx=3,dy=2,dz=-3] unless entity @s[tag=inTeam] run team join blue @s
execute at @e[type=minecraft:armor_stand,name=blue] if entity @e[type=minecraft:player,dx=3,dy=2,dz=-3] as @e[type=minecraft:player,dx=3,dy=2,dz=-3] unless entity @s[tag=inTeam] run tellraw @a [{"selector":"@s"},{"text":" est dans l'équipe bleu"}]
execute at @e[type=minecraft:armor_stand,name=blue] if entity @e[type=minecraft:player,dx=3,dy=2,dz=-3] as @e[type=minecraft:player,dx=3,dy=2,dz=-3] unless entity @s[tag=inTeam] run tag @s add inTeam

# trigger players is ready
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams run scoreboard players enable @a ready
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=1},tag=notReady] as @e[scores={ready=1},tag=notReady] run tellraw @a [{"selector":"@s"},{"text":" est prêt!"}]
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=1},tag=notReady] as @e[scores={ready=1},tag=notReady] run tag @s add ready
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=1},tag=notReady] as @e[scores={ready=1},tag=notReady] run tag @s remove notReady
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=0},tag=ready] as @e[scores={ready=0},tag=ready] run tellraw @a [{"selector":"@s"},{"text":" n'est pas prêt!"}]
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=0},tag=ready] as @e[scores={ready=0},tag=ready] run tag @s add notReady
execute if score canReady teams matches 1 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams if entity @e[scores={ready=0},tag=ready] as @e[scores={ready=0},tag=ready] run tag @s remove ready

# ask players if is ready
execute if score canReady teams matches 0 if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams run tellraw @a [{"text":"Prêt ? "},{"text":"Oui","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ready set 1"},"hoverEvent":{"action":"show_text","value":"Cliquer"}},{"text":" / "},{"text":"Non","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ready set 0"},"hoverEvent":{"action":"show_text","value":"Cliquer"}}]
execute if score JoueursDansUneÉquipe Teams = NombreDeJoueur Teams run scoreboard players set canReady teams 1

# check if all player is ready
execute if score JoueursPrêts Teams = NombreDeJoueur Teams run function bitacu:game/start_game

# disable team selection
execute if score JoueursPrêts Teams = NombreDeJoueur Teams run scoreboard players set selTeam teams 0
