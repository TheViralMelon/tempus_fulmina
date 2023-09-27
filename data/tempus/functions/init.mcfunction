#> Objectives
scoreboard objectives add tempus.dummy1 dummy
scoreboard objectives add tempus.decay dummy
scoreboard objectives add tempus.conductive dummy

#> Fakeplayer numbers
scoreboard players set 2 tempus.dummy1 2
scoreboard players set 5 tempus.dummy1 5
scoreboard players set 10 tempus.dummy1 10

#> Lightning limiter setup
scoreboard players set #lightningLimiterX tempus.dummy1 0
scoreboard players set #lightningLimiterZ tempus.dummy1 0

#> Calculate worldspawn
function tempus:amf/find_worldspawn