#> VFX
particle flash ~ ~ ~ 0 0 0 1 2 force @a
particle dust_color_transition 1.0 1.0 0.0 3.0 0.0 1.0 1.0 ~ ~ ~ 0.7 0.7 0.7 1 30 force @a
particle enchanted_hit ~ ~0.8 ~ 0.2 0.2 0.2 2 30 force @a
particle crit ~ ~ ~ 0.2 0.2 0.2 2 25 force @a
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.8 20 force @a

#> SFX
stopsound @a[distance=..20] player block.portal.trigger
stopsound @a[distance=..20] player item.elytra.flying
playsound entity.blaze.death player @a ~ ~ ~ 1 0.8
playsound item.trident.thunder player @a ~ ~ ~ 1 1.3
playsound entity.lightning_bolt.impact player @s ~ ~ ~ 1 1.2
playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 2

#> Launch
scoreboard players operation #detonateRadius tempus.dummy1 = @s tempus.dummy1
summon armor_stand ~ ~ ~ {Tags:["tempus.DischargeLauncher"],Invisible:1b,Marker:1b}
power grant @e[tag=tempus.DischargeLauncher] tempus:discharge/detect tempus:discharge

#> Cleanup
kill @s
tag @a remove tempus.DischargeOwner