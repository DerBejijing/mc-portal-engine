particle dust 100 0 50 1 ~ ~ ~ 0 0 0 0 1 force @a[scores={debug=1}]
scoreboard players add @s searchLimit 1

#execute if entity @p[distance=..1] run say player

execute if block ~ ~ ~ #minecraft:turret_ray_pass unless entity @p[distance=..0.2] if entity @s[distance=..10] run execute as @s positioned ^ ^ ^0.5 run function game:turret/search
