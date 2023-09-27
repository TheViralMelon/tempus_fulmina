#> Setup
execute store result score #radius tempus.dummy1 run resource get @s tempus:discharge/charge_amount
scoreboard players set #circleTick tempus.dummy1 60

#> SFX
# stopsound @a[distance=..32] player minecraft:entity.zombie_villager.cure
# execute at @a[distance=..16] run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.025 2
execute at @a[distance=..16] run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.03 0
execute at @a[distance=..16] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.02 2
execute at @a[distance=..16] run playsound minecraft:block.sculk_sensor.clicking player @s ~ ~ ~ 0.03 1.5

#> Pain
execute if score #radius tempus.dummy1 matches 1 run function tempus:discharge/circles/passive_1
execute if score #radius tempus.dummy1 matches 2 run function tempus:discharge/circles/passive_2
execute if score #radius tempus.dummy1 matches 3 run function tempus:discharge/circles/passive_3
execute if score #radius tempus.dummy1 matches 4 run function tempus:discharge/circles/passive_4