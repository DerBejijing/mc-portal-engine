tag @s add closing

execute if score @s liftDoorMoves < #liftDoorClosing liftDoorMoves run execute as @e[tag=liftDoor1,limit=1,sort=nearest] at @s run tp @s ^-0.5 ^ ^
execute if score @s liftDoorMoves < #liftDoorClosing liftDoorMoves run execute as @e[tag=liftDoor2,limit=1,sort=nearest] at @s run tp @s ^0.5 ^ ^
execute if score @s liftDoorMoves < #liftDoorClosing liftDoorMoves run scoreboard players add @s liftDoorMoves 1

execute if score @s liftDoorMoves = #liftDoorClosing liftDoorMoves run function game:lift_door/close
