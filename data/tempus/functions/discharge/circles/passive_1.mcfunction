execute positioned ^ ^ ^2 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove #circleTick tempus.dummy1 1
execute if score #circleTick tempus.dummy1 matches 0.. rotated ~6 ~ run function tempus:discharge/circles/passive_1