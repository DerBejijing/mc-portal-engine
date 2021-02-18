execute if entity @p[tag=north] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ -90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ 90 ~

execute if entity @p[tag=north] run tag @s add north
execute if entity @p[tag=east] run tag @s add east
execute if entity @p[tag=south] run tag @s add south
execute if entity @p[tag=west] run tag @s add west

tag @s add liftDoorClosed
scoreboard players set @s liftDoorMoves 0

execute align xyz positioned ~0.5 ~0.8 ~0.5 run execute align xz positioned ~0.5 ~ ~0.5 rotated as @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["liftDoorRail","liftDoor","GameObject"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:3}}]}
execute align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^ run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:brown_wool"},NoGravity:1b,Tags:["liftDoorBaseBlock","liftDoor","GameObject"],Time:1}
execute align xyz positioned ~0.5 ~ ~0.5 positioned ^1 ^ ^ run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:brown_wool"},NoGravity:1b,Tags:["liftDoorBaseBlock","liftDoor","GameObject"],Time:1}
execute align xyz positioned ~0.5 ~ ~0.5 positioned ^-1 ^ ^ run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:brown_wool"},NoGravity:1b,Tags:["liftDoorBaseBlock","liftDoor","GameObject"],Time:1}


execute positioned ~ ~0.8 ~ run tp @e[tag=liftDoorRail,limit=1,sort=nearest] ~ ~ ~ ~ ~
fill ^-1 ^1 ^ ^1 ^3 ^ minecraft:barrier
setblock ~ ~ ~ minecraft:redstone_lamp
tag @s add initialized
