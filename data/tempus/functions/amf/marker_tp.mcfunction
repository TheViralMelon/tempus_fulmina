# say running marker_tp.mcfunction ...
data modify entity @s Pos set from storage tempus playerSpawn
tp @a[tag=tempus.AmfSpawn] @s
kill @s