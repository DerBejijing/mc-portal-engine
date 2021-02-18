execute as @a[distance=..1,scores={itemData=5}] at @s run function game:acid_spreader/unpaint_portal_gun

execute if block ~ ~-0.9 ~ minecraft:white_concrete run execute align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["white_yellow"]}
execute if block ~ ~-0.9 ~ minecraft:gray_concrete run execute align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["gray_yellow"]}

execute unless block ~ ~-0.9 ~ #minecraft:beam_ignore run kill @s
execute unless block ~ ~-0.9 ~ #minecraft:beam_ignore run particle minecraft:block minecraft:slime_block ~ ~-0.4 ~ 0.1 0.1 0.1 0 100 force
execute unless block ~ ~-0.9 ~ #minecraft:beam_ignore run particle minecraft:block minecraft:yellow_concrete ~ ~-0.4 ~ 0.1 0.1 0.1 0 100 force
execute unless block ~ ~-0.9 ~ #minecraft:beam_ignore run playsound entity.player.splash ambient @p ~ ~ ~ 0.1
