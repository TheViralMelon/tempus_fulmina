#> Startup
tag @s add tempus.DischargeFinish

#> FX
execute positioned ~ ~0.1 ~ rotated ~ 0 run function tempus:discharge/increase_fx
playsound block.portal.trigger player @a ~ ~ ~ 1 2
playsound item.elytra.flying player @a ~ ~ ~ 0.7 2
# playsound item.trident.riptide_2 player @a ~ ~ ~ 1 1.7
playsound item.trident.return player @a ~ ~ ~ 1 1.5
playsound item.trident.return player @a ~ ~ ~ 1 1.5
playsound item.trident.return player @a ~ ~ ~ 1 1.5
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2

#> Tracker
summon marker ~ ~ ~ {Tags:["tempus.DischargeSpawn","tempus.DischargeTracker"]}
data modify entity @e[tag=tempus.DischargeSpawn,limit=1] data set from entity @s UUID
scoreboard players operation @e[tag=tempus.DischargeSpawn] tempus.dummy1 = #radius tempus.dummy1
tag @e[tag=tempus.DischargeSpawn] remove tempus.DischargeSpawn

#> Cleanup
tag @s remove tempus.DischargeFinish