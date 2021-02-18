execute as @s[tag=blue] at @s run particle minecraft:dust 0.3 0.3 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[tag=red] at @s run particle minecraft:dust 1 0.7 0 1 ~ ~ ~ 0 0 0 0 1 force @a

execute if entity @e[tag=portal,distance=..1] run kill @s


execute if score @s bounce matches ..5 if block ^ ^ ^0.5 minecraft:black_stained_glass run function game:portal_gun/bounce


execute if block ~ ~ ~ minecraft:white_terracotta if block ~ ~1 ~ minecraft:orange_terracotta unless block ~ ~-1 ~ #minecraft:ignore if entity @s[tag=red] run function game:portal_gun/portal/generate_red
execute if block ~ ~ ~ minecraft:white_terracotta if block ~ ~1 ~ minecraft:orange_terracotta unless block ~ ~-1 ~ #minecraft:ignore if entity @s[tag=blue] run function game:portal_gun/portal/generate_blue

execute if block ~ ~-1 ~ minecraft:white_terracotta if block ~ ~ ~ minecraft:orange_terracotta unless block ~ ~-2 ~ #minecraft:ignore if entity @s[tag=red] positioned ~ ~-1 ~ run function game:portal_gun/portal/generate_red
execute if block ~ ~-1 ~ minecraft:white_terracotta if block ~ ~ ~ minecraft:orange_terracotta unless block ~ ~-2 ~ #minecraft:ignore if entity @s[tag=blue] positioned ~ ~-1 ~ run function game:portal_gun/portal/generate_blue


execute unless block ^ ^ ^ #minecraft:ignore run kill @s

execute if block ~ ~ ~ #minecraft:ignore run tp @s ^ ^ ^0.4
execute if block ~ ~ ~ #minecraft:ignore run execute as @s at @s run function game:portal_gun/flight_2
