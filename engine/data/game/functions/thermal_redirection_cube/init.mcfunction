tag @s add initialized
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:coal_ore"},NoGravity:1b,Time:1,Tags:["thermaldmb_redirection","GameObject"]}
setblock ~ ~ ~ minecraft:note_block


execute if entity @p[tag=north] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ -90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ 90 ~
