# say running check_dimension.mcfunction...

#> Store spawndim
data modify storage tempus dimension set from entity @s SpawnDimension
data modify storage tempus dimensionStorage set from storage tempus dimension

#> Check against current dim
execute as @s store success score #noDimensionChange tempus.dummy1 run data modify storage tempus dimension set from entity @s Dimension

#> Rest of the function
execute if score #noDimensionChange tempus.dummy1 matches 1 at @s run function tempus:amf/change_dimension
# execute if score #noDimensionChange tempus.dummy1 matches 0 run # say No dimensional change!