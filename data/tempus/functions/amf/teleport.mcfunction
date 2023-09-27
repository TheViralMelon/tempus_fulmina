# say running teleport.mcfunction ...
#> Check in case something got messed up
kill @e[tag=tempus.Lightning]

#> FX
function tempus:amf/fx

#> Store spawn coords
execute unless data entity @s SpawnX at @s run function tempus:amf/worldspawn_tp
execute as @s[tag=!tempus.AmfWorldspawn] store result storage minecraft:tempus playerSpawnX double 1 run data get entity @s SpawnX
execute as @s[tag=!tempus.AmfWorldspawn] store result storage minecraft:tempus playerSpawnY double 1 run data get entity @s SpawnY
execute as @s[tag=!tempus.AmfWorldspawn] store result storage minecraft:tempus playerSpawnZ double 1 run data get entity @s SpawnZ
data modify storage tempus playerSpawn set value []
data modify storage tempus playerSpawn append from storage tempus playerSpawnX
data modify storage tempus playerSpawn append from storage tempus playerSpawnY
data modify storage tempus playerSpawn append from storage tempus playerSpawnZ

#> TP non-worldspawn players
summon marker ~ ~ ~ {Tags:["tempus.AmfMarker"]}
tag @s[tag=!tempus.AmfWorldspawn] add tempus.AmfSpawn
execute as @e[tag=tempus.AmfMarker] at @s run function tempus:amf/marker_tp

#> Check dimension
execute as @s[tag=tempus.AmfSpawn] at @s run function tempus:amf/check_dimension

#> Check in case something got messed up 2
kill @e[tag=tempus.Lightning]

#> Delay power
tag @s add tempus.AmfBlink
power grant @s tempus:blink tempus:tempus

#> Cleanup
tag @s remove tempus.AmfSpawn
tag @s remove tempus.InvalidWorldspawn