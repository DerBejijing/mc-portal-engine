tag @s add opening

kill @e[tag=liftDoorRail,sort=nearest,limit=1]
execute align xyz positioned ~0.5 ~0.8 ~0.5 positioned ^1 ^ ^ run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["liftDoorRailOpen","liftDoor","GameObject","liftDoor1"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}]}
execute align xyz positioned ~0.5 ~0.8 ~0.5 positioned ^-1 ^ ^ run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["liftDoorRailOpen","liftDoor","GameObject","liftDoor2"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]}

execute if entity @s[tag=north] as @e[tag=liftDoorRailOpen,limit=2,sort=nearest] at @s run tp @s ~ ~ ~ 180 ~
execute if entity @s[tag=east] as @e[tag=liftDoorRailOpen,limit=2,sort=nearest] at @s run tp @s ~ ~ ~ -90 ~
execute if entity @s[tag=south] as @e[tag=liftDoorRailOpen,limit=2,sort=nearest] at @s run tp @s ~ ~ ~ 0 ~
execute if entity @s[tag=west] as @e[tag=liftDoorRailOpen,limit=2,sort=nearest] at @s run tp @s ~ ~ ~ 90 ~

fill ^-1 ^1 ^ ^1 ^3 ^ minecraft:air

execute as @s at @s run function game:lift_door/slide_opening
