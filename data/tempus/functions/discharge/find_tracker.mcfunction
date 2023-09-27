#> Comparison
data modify storage tempus dischargeID set from entity @a[tag=tempus.DischargeOwner,limit=1] UUID
execute if score #findSpawn tempus.dummy1 matches 1 run data modify storage tempus dischargeID set from entity @a[tag=tempus.SpawnPointer,limit=1] UUID
execute if entity @a[tag=tempus.SpawnPointer] run say pointer
execute store success score #dischargeCheck tempus.dummy1 run data modify storage tempus dischargeID set from entity @s data

#> Success
execute as @s at @s if score #dischargeCheck tempus.dummy1 matches 1 unless score #findSpawn tempus.dummy1 matches 1 run function tempus:discharge/active_end
execute if score #dischargeCheck tempus.dummy matches 1 if score #findSpawn tempus.dummy1 matches 1 run say finding...
execute as @s at @s if score #dischargeCheck tempus.dummy1 matches 1 if score #findSpawn tempus.dummy1 matches 1 run power grant @s tempus:hyperactivity/detect tempus:hyperactivity