execute if score @s liftDoorMoves > #liftDoorTimeout liftDoorMoves if score @s liftDoorMoves < #liftManager liftDoorMoves run execute as @e[tag=liftDoor1,limit=1,sort=nearest] at @s run tp @s ^0.5 ^ ^
execute if score @s liftDoorMoves > #liftDoorTimeout liftDoorMoves if score @s liftDoorMoves < #liftManager liftDoorMoves run execute as @e[tag=liftDoor2,limit=1,sort=nearest] at @s run tp @s ^-0.5 ^ ^
execute if score @s liftDoorMoves < #liftManager liftDoorMoves run scoreboard players add @s liftDoorMoves 1

execute if score @s liftDoorMoves = #liftManager liftDoorMoves run tag @s remove liftDoorClosed
execute if score @s liftDoorMoves = #liftManager liftDoorMoves run tag @s add liftDoorOpen
execute if score @s liftDoorMoves = #liftManager liftDoorMoves run tag @s remove opening

execute if score @s liftDoorMoves = #liftManager liftDoorMoves run scoreboard players set @s liftDoorMoves 0
