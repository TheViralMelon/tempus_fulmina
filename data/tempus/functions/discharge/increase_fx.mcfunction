#> Setup
execute store result score #radius tempus.dummy1 run resource get @s tempus:discharge/charge_amount
scoreboard players set #circleTick tempus.dummy1 30
scoreboard players set #sphereTick tempus.dummy1 10

#> SFX
execute as @s[tag=!tempus.DischargeFinish] run function tempus:discharge/increase_sfx

#> Pain
execute if score #radius tempus.dummy1 matches 1 run function tempus:discharge/circles/increase_1
execute if score #radius tempus.dummy1 matches 2 run function tempus:discharge/circles/increase_2
execute if score #radius tempus.dummy1 matches 3 run function tempus:discharge/circles/increase_3
execute if score #radius tempus.dummy1 matches 4 run function tempus:discharge/circles/increase_4
execute if score #radius tempus.dummy1 matches 5 run function tempus:discharge/circles/increase_5