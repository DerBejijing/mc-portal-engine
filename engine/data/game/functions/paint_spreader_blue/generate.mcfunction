execute if block ~ ~ ~ minecraft:air run kill @e[tag=paint_spreader_model,sort=nearest,limit=1]
execute if block ~ ~ ~ minecraft:air run kill @s

execute if score @s spreadClock >= @s spreadTimer run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:blue_concrete"},NoGravity:0b,Time:1,DropItem:0b,Tags:["blue_paint"]}
execute if score @s spreadClock >= @s spreadTimer run scoreboard players set @s spreadClock 0
scoreboard players add @s spreadClock 1
