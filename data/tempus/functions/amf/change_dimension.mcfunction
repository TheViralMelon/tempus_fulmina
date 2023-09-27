# say running change_dimension.mcfunction ...
data modify storage tempus dimension set from storage tempus dimensionStorage

#> Get correct dimension
execute store success score #overworld tempus.dummy1 run data modify storage tempus dimension set value "minecraft:overworld"
data modify storage tempus dimension set from storage tempus dimensionStorage
execute store success score #nether tempus.dummy1 run data modify storage tempus dimension set value "minecraft:the_nether"
data modify storage tempus dimension set from storage tempus dimensionStorage
execute store success score #end tempus.dummy1 run data modify storage tempus dimension set value "minecraft:the_end"
data modify storage tempus dimension set from storage tempus dimensionStorage

#> Some modded dimension or some shit, back to worldspawn you go
execute if score #overworld tempus.dummy1 matches 1 if score #nether tempus.dummy1 matches 1 if score #end tempus.dummy1 matches 1 run tellraw @s [{"text":"Unfortunately, Tempus Fulmina doesn't support modded dimensions...instead, you've been teleported to the world spawn.","color":"cyan"}]
execute if score #overworld tempus.dummy1 matches 1 if score #nether tempus.dummy1 matches 1 if score #end tempus.dummy1 matches 1 run function tempus:amf/worldspawn_tp

#> Teleport to dimension
execute if score #overworld tempus.dummy1 matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score #nether tempus.dummy1 matches 0 in minecraft:the_nether run tp @s ~ ~ ~
execute if score #end tempus.dummy1 matches 0 in minecraft:the_end run tp @s ~ ~ ~