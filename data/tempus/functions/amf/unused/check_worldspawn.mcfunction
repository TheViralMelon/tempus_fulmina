# say running check_worldspawn.mcfunction ...

summon armor_stand ~ ~ ~ {Tags:["tempus.CheckWorldspawn"]}
power grant @e[tag=tempus.CheckWorldspawn] tempus:amf/check_worldspawn tempus:amf
execute store success 

execute if score #obstruction tempus.dummy1 matches 1.. run tag @s add tempus.InvalidWorldspawn
# tellraw @a [{"score":{"objective":"tempus.dummy1","name":"#obstruction"}}]
# execute if score #obstruction tempus.dummy1 matches 1.. run # say Invalid world spawnpoint!