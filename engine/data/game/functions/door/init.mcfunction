execute if entity @p[tag=north] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ -90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ 90 ~

execute align xyz positioned ~0.5 ~0.55 ~0.5 rotated as @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["doorRail","door","GameObject"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:orange_wool"},NoGravity:1b,Time:1,Tags:["doorBlock","door","GameObject"]}]}
execute align xz positioned ~0.5 ~ ~0.5 rotated as @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:pink_wool"},NoGravity:1b,Time:1,Tags:["door_controll_block","GameObject"]}
execute align xyz positioned ~0.5 ~0.55 ~0.5 run tp @e[tag=doorRail,limit=1,sort=nearest] ~ ~ ~ ~ ~
setblock ~ ~ ~ minecraft:redstone_lamp
tag @s add initialized
