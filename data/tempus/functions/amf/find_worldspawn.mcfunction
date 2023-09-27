# Don't ask.
# say running find_worldspawn.mcfunction ...

summon marker ~ ~ ~ {Tags:["tempus.worldspawnCheck"]}
execute as @e[tag=tempus.worldspawnCheck] at @s run data modify storage tempus worldspawn set from entity @s Pos
kill @e[tag=tempus.worldspawnCheck]