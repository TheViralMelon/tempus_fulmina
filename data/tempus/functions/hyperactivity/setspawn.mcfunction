#> Lightning
summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["tempus.Lightning"],Marker:1b}
tag @a[tag=tempus.SpawnPointer] add tempus.LightningOwner
power grant @e[tag=tempus.Lightning] tempus:lightning tempus:tempus
power grant @s tempus:hyperactivity/lightning_check tempus:hyperactivity

#> Spawnpoint
spawnpoint @a[tag=tempus.SpawnPointer] ~ ~1 ~
execute store result score #spawnX tempus.dummy1 run data get entity @s Pos[0]
execute store result score #spawnY tempus.dummy1 run data get entity @s Pos[1]
execute store result score #spawnZ tempus.dummy1 run data get entity @s Pos[2]
title @a[tag=tempus.SpawnPointer] actionbar [{"text":"Successfully set spawn at ","color":"aqua"},{"score":{"objective":"tempus.dummy1","name":"#spawnX"},"color":"yellow","bold":true},{"text":", ","color":"yellow","bold":true},{"score":{"objective":"tempus.dummy1","name":"#spawnY"},"color":"yellow","bold":true},{"text":", ","color":"yellow","bold":true},{"score":{"objective":"tempus.dummy1","name":"#spawnZ"},"color":"yellow","bold":true},{"text":"!","color":"aqua","bold":false}]
execute as @a[tag=tempus.SpawnPointer] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2