tag @s add initialized
setblock ~ ~ ~ stone
execute align xyz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_ore"},NoGravity:1b,Time:1,Tags:["thermaldmb_block","GameObject"]}
