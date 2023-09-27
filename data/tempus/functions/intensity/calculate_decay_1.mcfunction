#> Compare spawn/current dimension
data modify storage tempus dimension set from entity @s SpawnDimension
execute store result score @s tempus.dummy1 run data modify storage tempus dimension set from entity @s Dimension
scoreboard players set @s[scores={tempus.dummy1=1}] tempus.decay 25
execute as @s[scores={tempus.dummy1=0}] run function tempus:intensity/calculate_decay_2
# tellraw @a [{"text":"Dimensional comparison ... "},{"score":{"objective":"tempus.dummy1","name":"@s"}}]

#> Cleanup
tag @s remove tempus.MaxDecay
tag @s remove tempus.MinDecay
tag @s remove tempus.NoSpawn
scoreboard players set @s tempus.dummy1 0