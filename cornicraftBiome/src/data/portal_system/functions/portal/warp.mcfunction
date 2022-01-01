#say warp
scoreboard players set @s dim_portals 1000000

tag @s add this
execute if predicate portal_system:in_overworld run function portal_system:portal/to_dimension
execute unless predicate portal_system:in_overworld run function portal_system:portal/to_overworld
tag @s remove this