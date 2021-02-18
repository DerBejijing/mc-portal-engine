tag @s add flying
tp @s ^ ^ ^0.2
particle minecraft:dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute as @s at @s if block ~ ~ ~ #minecraft:beam_ignore run function game:thermaldmb/flight
