execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 0.4 0.2 1 100 force @a
execute at @s run particle minecraft:dust_color_transition 1.0 1.0 0.0 2.0 0.0 1.0 1.0 ~ ~1 ~ 0.3 0.5 0.3 0 100 force @a
execute at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..25] ~ ~ ~ 1 1 0.5
execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..25] ~ ~ ~ 1 0.5 0.5
execute at @s run particle flash ~ ~1 ~ 0.2 0.4 0.2 1 100 force @a