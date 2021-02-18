kill @e[tag=liftDoorRailOpen,limit=2,sort=nearest]
execute align xyz positioned ~0.5 ~0.8 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["liftDoorRail","liftDoor","GameObject"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:3}}]}

execute if entity @s[tag=north] as @e[tag=liftDoorRail,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 180 ~
execute if entity @s[tag=east] as @e[tag=liftDoorRail,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 90 ~
execute if entity @s[tag=south] as @e[tag=liftDoorRail,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 0 ~
execute if entity @s[tag=west] as @e[tag=liftDoorRail,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 90 ~

fill ^-1 ^1 ^ ^1 ^3 ^ minecraft:barrier

tag @s remove liftDoorOpen
tag @s add liftDoorClosed
tag @s remove closing

scoreboard players set @s liftDoorMoves 0
