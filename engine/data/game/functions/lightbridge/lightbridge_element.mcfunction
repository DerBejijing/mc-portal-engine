setblock ~ ~ ~ minecraft:iron_trapdoor keep
scoreboard players add @s lbLive 1


## TODO: change trapdoor rotation to make animating easier


execute if score @s lbLive = #LightBridge lbLive run setblock ~ ~ ~ air
execute if score @s lbLive = #LightBridge lbLive run kill @s
