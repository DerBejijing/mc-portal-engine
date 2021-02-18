execute if block ~ ~ ~ minecraft:air run kill @e[tag=acid_spreader_model,sort=nearest,limit=1]
execute if block ~ ~ ~ minecraft:air run kill @s

execute if score @s spreadClock >= @s spreadTimer run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:yellow_concrete"},NoGravity:0b,Time:1,DropItem:0b,Tags:["paintAcid"]}
execute if score @s spreadClock >= @s spreadTimer run scoreboard players set @s spreadClock 0
execute as @e[tag=paintAcid] at @s run function game:acid_spreader/paint
scoreboard players add @s spreadClock 1
