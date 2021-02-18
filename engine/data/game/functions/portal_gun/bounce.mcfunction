execute unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 air run function game:portal_gun/zplane
execute unless block ~ ~ ~-0.5 air run function game:portal_gun/zplane

tp @s ^ ^ ^1
playsound minecraft:block.end_portal_frame.fill ambient @a ~ ~ ~ 10 0
scoreboard players add @s bounce 1
execute rotated as @s run function game:portal_gun/flight_2


# code by Cloud Wolf
