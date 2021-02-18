execute if entity @s[tag=portal_blue] if entity @p[distance=..0.5] run execute as @e[tag=portal_red] at @s run tp @p ^ ^ ^0.8 facing entity @s

execute if entity @s[tag=portal_red] if entity @p[distance=..0.5] run execute as @e[tag=portal_blue] at @s run tp @p ^ ^ ^0.8 facing entity @s


execute as @p at @s run tp @s ~ ~ ~ ~180 0
execute as @p at @s run tp @s ^ ^ ^0.3
