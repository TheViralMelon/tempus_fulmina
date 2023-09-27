# say running worldspawn_tp.mcfunction ...
tellraw @s [{"text":"You have no home lightning rod, or it was obstructed"}]
tag @s add tempus.AmfWorldspawn
summon marker ~ ~ ~ {Tags:["tempus.AmfMarker"]}
data modify entity @e[tag=tempus.AmfMarker,limit=1] Pos set from storage tempus worldspawn
tp @s @e[tag=tempus.AmfMarker,limit=1]
kill @e[tag=tempus.AmfMarker]
# Fuck you, Nether coordinate multiplier