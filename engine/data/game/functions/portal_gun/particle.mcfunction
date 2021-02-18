execute as @s[tag=blue] at @s run particle minecraft:dust 0.3 0.3 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=red] at @s run particle minecraft:dust 1 0.7 0 1 ~ ~ ~ 0 0 0 0 1 force @a

execute as @s at @s run function game:portal_gun/particle
