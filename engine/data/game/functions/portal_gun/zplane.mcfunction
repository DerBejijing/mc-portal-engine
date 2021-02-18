### 180 - Rotation[0]

scoreboard players set @s raycastTemp 18000
execute store result score @s raycastTemp run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s raycastTemp -= @s raycastTemp

# code by Cloud Wolf
