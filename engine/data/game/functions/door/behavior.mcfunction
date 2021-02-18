execute if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=doorRail,limit=1,sort=nearest,distance=..5,tag=!isUp,tag=!goUp,tag=!goDown] at @s run tag @s add goUp
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=false] positioned ~ ~3 ~ as @e[tag=doorRail,limit=1,sort=nearest,distance=..2,tag=isUp,tag=!goUp] run tag @s add goDown

execute if block ~ ~ ~ minecraft:air run fill ~1 ~ ~1 ~-1 ~4 ~-1 minecraft:air replace minecraft:barrier
execute if block ~ ~ ~ minecraft:air run kill @e[tag=doorRail,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:air run kill @e[tag=doorBlock,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:air run kill @e[tag=door_controll_block,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:air run kill @s
