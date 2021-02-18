setblock ~ ~ ~ redstone_lamp
execute align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gold_ore"},NoGravity:1b,Time:1,Tags:["thermaldmb_block","GameObject"]}

execute if entity @p[tag=north] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ 90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ -90 ~

scoreboard players set @s laserPulse 0

tag @s add initialized
