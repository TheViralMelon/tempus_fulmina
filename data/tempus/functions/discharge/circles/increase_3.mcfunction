tag @s remove tempus.SphereTicking
# say running increase_3.mcfunction ...

#> Circle particles
# execute positioned ^ ^ ^2 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
# execute positioned ^ ^ ^-2 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=!tempus.DischargeFinish] positioned ^ ^ ^6 run particle crit ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=!tempus.DischargeFinish] positioned ^ ^ ^-6 run particle crit ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=tempus.DischargeFinish] positioned ^ ^ ^6 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=tempus.DischargeFinish] positioned ^ ^ ^-6 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove #circleTick tempus.dummy1 1
execute if score #circleTick tempus.dummy1 matches 0.. rotated ~6 ~ run function tempus:discharge/circles/increase_3

#> Iteration to create sphere
execute if score #circleTick tempus.dummy1 matches ..-1 if score #sphereTick tempus.dummy1 matches 1.. run tag @s add tempus.SphereTicking
execute as @s[tag=tempus.SphereTicking] run scoreboard players set #circleTick tempus.dummy1 30
execute as @s[tag=tempus.SphereTicking] run scoreboard players remove #sphereTick tempus.dummy1 1
execute as @s[tag=tempus.SphereTicking] rotated ~ ~-18 run function tempus:discharge/circles/increase_3