#> Square each distance coord
scoreboard players operation #posX tempus.dummy1 *= #posX tempus.dummy1
scoreboard players operation #posY tempus.dummy1 *= #posY tempus.dummy1
scoreboard players operation #posZ tempus.dummy1 *= #posZ tempus.dummy1
# tellraw @a [{"text":"dx^2 = "},{"score":{"objective":"tempus.dummy1","name":"#posX"}},{"text":" ... dy^2 = "},{"score":{"objective":"tempus.dummy1","name":"#posY"}},{"text":" ... dz^2 = "},{"score":{"objective":"tempus.dummy1","name":"#posZ"}}]

#> Sum
scoreboard players operation #posX tempus.dummy1 += #posY tempus.dummy1
scoreboard players operation #posX tempus.dummy1 += #posZ tempus.dummy1
# tellraw @a [{"text":"Sum of squares ... "},{"score":{"objective":"tempus.dummy1","name":"#posX"}}]

#> Square Root; final output is #sqrtOutput
scoreboard players set #sqrtOutput tempus.dummy1 0
scoreboard players set #sqrtInterval tempus.dummy1 32767
function tempus:square_root
# tellraw @a [{"text":"Square root result ... "},{"score":{"objective":"tempus.dummy1","name":"#sqrtOutput"}}]

#> Check if <=100
execute if score #sqrtOutput tempus.dummy1 matches ..100 run tag @s add tempus.MinDecay
scoreboard players operation #sqrtOutput tempus.dummy1 /= 10 tempus.dummy1
scoreboard players operation @s tempus.decay = #sqrtOutput tempus.dummy1
scoreboard players set @s[tag=tempus.MinDecay] tempus.decay 10
# tellraw @a [{"text":"Final decay score ... "},{"score":{"objective":"tempus.decay","name":"@s"}}]