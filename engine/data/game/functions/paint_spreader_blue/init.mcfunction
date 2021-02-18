scoreboard players set @s spreadClock 1
scoreboard players set @s spreadTimer 30
# normal values. Can be changed at any time

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lapis_ore"},NoGravity:1b,Time:1,DropItem:0b,Tags:["paint_spreader_model"]}
setblock ~ ~ ~ minecraft:stone_slab
tag @s add initialized
