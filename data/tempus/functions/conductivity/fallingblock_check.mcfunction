# This function is used to create an armor stand and transfer the item entity's item to its head, such that the 'check item' predicate can be used to determine whether or not the original entity is conductive
# As water, lava, and powder snow cauldrons don't have item equivalents, they are checked via conditionals at the start of the function
# say running fallingblock_check.mcfunction ...

#> Cauldrons
execute if data entity @s BlockState{Name:"minecraft:lava_cauldron"} run scoreboard players set @s tempus.conductive 1
execute if data entity @s BlockState{Name:"minecraft:powder_snow_cauldron"} run scoreboard players set @s tempus.conductive 1
execute if data entity @s BlockState{Name:"minecraft:water_cauldron"} run scoreboard players set @s tempus.conductive 1

#> The Rest
summon armor_stand ~ ~ ~ {Tags:["tempus.FallingblockChecker"],ArmorItems:[{},{},{},{id:"minecraft:skeleton_spawn_egg",Count:1b}]}
data modify entity @e[type=armor_stand,limit=1,tag=tempus.FallingblockChecker] ArmorItems[3].id set from entity @s BlockState.Name
execute as @e[tag=tempus.FallingblockChecker] if predicate tempus:conductivity/check_item run scoreboard players set @e[limit=1,sort=nearest,type=falling_block] tempus.conductive 1
kill @e[tag=tempus.FallingblockChecker]