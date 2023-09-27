#> Credits go to PartTime#4593 for this function
scoreboard players operation #sqrtTest tempus.dummy1 = #sqrtOutput tempus.dummy1
scoreboard players operation #sqrtTest tempus.dummy1 += #sqrtInterval tempus.dummy1
scoreboard players operation #sqrtTest tempus.dummy1 *= #sqrtTest tempus.dummy1

execute if score #sqrtTest tempus.dummy1 <= #posX tempus.dummy1 run scoreboard players operation #sqrtOutput tempus.dummy1 += #sqrtInterval tempus.dummy1

scoreboard players operation #sqrtInterval tempus.dummy1 /= 2 tempus.dummy1
execute if score #sqrtInterval tempus.dummy1 matches 1.. run function tempus:square_root

# tellraw @a [{"text":"Current output value ... "},{"score":{"objective":"tempus.dummy1","name":"#sqrtOutput"}}]