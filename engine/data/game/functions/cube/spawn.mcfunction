setblock ~ ~ ~ note_block
tag @s add initialized
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:diamond_ore"},NoGravity:1b,Time:1,Tags:["weightedCube","GameObject"]}
