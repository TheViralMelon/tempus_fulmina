# This function is used to create an armor stand and transfer the item entity's item to its head, such that the 'check item' predicate can be used to determine whether or not the original entity is conductive
# say running item_check.mcfunction ...
summon armor_stand ~ ~ ~ {Tags:["tempus.ItemChecker"]}
data modify entity @e[type=armor_stand,limit=1,tag=tempus.ItemChecker] ArmorItems[3] set from entity @s Item
execute as @e[tag=tempus.ItemChecker] if predicate tempus:conductivity/check_item run scoreboard players set @e[limit=1,sort=nearest,type=item] tempus.conductive 1
kill @e[tag=tempus.ItemChecker]