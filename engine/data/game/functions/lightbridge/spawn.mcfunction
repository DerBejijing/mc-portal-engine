execute align xyz positioned ~0.5 ~-0.2 ~0.5 run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Tags:["lightBridge","lb","GameObject"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:5}}]}

execute as @e[tag=lightBridge,sort=nearest,limit=1] at @s run execute if entity @p[tag=north] run tp @s ~ ~ ~ 0 ~
execute as @e[tag=lightBridge,sort=nearest,limit=1] at @s run execute if entity @p[tag=east] run tp @s ~ ~ ~ 90 ~
execute as @e[tag=lightBridge,sort=nearest,limit=1] at @s run execute if entity @p[tag=south] run tp @s ~ ~ ~ 180 ~
execute as @e[tag=lightBridge,sort=nearest,limit=1] at @s run execute if entity @p[tag=west] run tp @s ~ ~ ~ -90 ~

kill @s
