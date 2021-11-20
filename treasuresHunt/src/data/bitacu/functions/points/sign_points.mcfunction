function bitacu:points/calc_teams_points

function bitacu:build/rm_sign_points

execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~-40 ~1 ~ minecraft:birch_wall_sign[facing=east]{"Text1":'{"text":"Points dans"}',"Text2":'{"text":"le coffre :"}',"Text3":'{"score":{"name":"pointsY","objective":"points"},"color":"black"}'} replace
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~1 ~40 minecraft:birch_wall_sign[facing=north]{"Text1":'{"text":"Points dans"}',"Text2":'{"text":"le coffre :"}',"Text3":'{"score":{"name":"pointsR","objective":"points"},"color":"black"}'} replace
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~40 ~1 ~ minecraft:birch_wall_sign[facing=west]{"Text1":'{"text":"Points dans"}',"Text2":'{"text":"le coffre :"}',"Text3":'{"score":{"name":"pointsG","objective":"points"},"color":"black"}'} replace
execute at @e[type=minecraft:armor_stand,name=origin] run setblock ~ ~1 ~-40 minecraft:birch_wall_sign[facing=south]{"Text1":'{"text":"Points dans"}',"Text2":'{"text":"le coffre :"}',"Text3":'{"score":{"name":"pointsB","objective":"points"},"color":"black"}'} replace
