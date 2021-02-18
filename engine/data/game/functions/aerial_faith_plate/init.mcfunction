execute if entity @p[tag=north] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ -90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ 90 ~

setblock ~ ~ ~ minecraft:sea_lantern
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:black_wool"},NoGravity:1b,Time:1,Tags:["aerialFaithPlate_Block","GameObject"]}
tag @s add initialized
