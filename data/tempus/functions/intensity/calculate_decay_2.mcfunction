#> Store spawn coords
execute as @s[tag=!tempus.NoSpawn] store result score #spawnX tempus.dummy1 run data get entity @s SpawnX
execute as @s[tag=!tempus.NoSpawn] store result score #spawnY tempus.dummy1 run data get entity @s SpawnY
execute as @s[tag=!tempus.NoSpawn] store result score #spawnZ tempus.dummy1 run data get entity @s SpawnZ

execute as @s[tag=tempus.NoSpawn] run scoreboard players set #spawnX tempus.dummy1 0
execute as @s[tag=tempus.NoSpawn] run scoreboard players set #spawnY tempus.dummy1 0
execute as @s[tag=tempus.NoSpawn] run scoreboard players set #spawnZ tempus.dummy1 0

#> Store current position
execute store result score #posX tempus.dummy1 run data get entity @s Pos[0]
execute store result score #posY tempus.dummy1 run data get entity @s Pos[1]
execute store result score #posZ tempus.dummy1 run data get entity @s Pos[2]

#> Calculate difference
scoreboard players operation #posX tempus.dummy1 -= #spawnX tempus.dummy1
scoreboard players operation #posY tempus.dummy1 -= #spawnY tempus.dummy1
scoreboard players operation #posZ tempus.dummy1 -= #spawnZ tempus.dummy1

#> Check if distance is outside 500x500x500 cube (to prevent scoreboard overflow when values are squared)
execute if score #posX tempus.dummy1 matches 500.. run tag @s add tempus.MaxDecay
execute if score #posY tempus.dummy1 matches 500.. run tag @s add tempus.MaxDecay
execute if score #posZ tempus.dummy1 matches 500.. run tag @s add tempus.MaxDecay

execute if score #posX tempus.dummy1 matches ..-500 run tag @s add tempus.MaxDecay
execute if score #posY tempus.dummy1 matches ..-500 run tag @s add tempus.MaxDecay
execute if score #posZ tempus.dummy1 matches ..-500 run tag @s add tempus.MaxDecay

scoreboard players set @s[tag=tempus.MaxDecay] tempus.decay 50

execute as @s[tag=!tempus.MaxDecay] run function tempus:intensity/calculate_decay_3