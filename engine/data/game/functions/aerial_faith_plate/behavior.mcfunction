execute if entity @s[y_rotation=180] positioned ~ ~1 ~ if entity @p[distance=..0.6] unless entity @e[tag=aefp_trail] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Motion:[0.0,1.5,-1.0],Tags:["aefp_trail"],Rotation:[180F,0F]}
execute if entity @s[y_rotation=0] positioned ~ ~1 ~ if entity @p[distance=..0.6] unless entity @e[tag=aefp_trail] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Motion:[0.0,1.5,1.0],Tags:["aefp_trail"],Rotation:[0F,0F]}
execute if entity @s[y_rotation=90] positioned ~ ~1 ~ if entity @p[distance=..0.6] unless entity @e[tag=aefp_trail] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Motion:[-1.0,1.5,0.0],Tags:["aefp_trail"],Rotation:[90F,0F]}
execute if entity @s[y_rotation=-90] positioned ~ ~1 ~ if entity @p[distance=..0.6] unless entity @e[tag=aefp_trail] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Motion:[1.0,1.5,0.0],Tags:["aefp_trail"],Rotation:[-90F,0F]}

execute as @e[tag=aefp_trail] at @s run function game:aerial_faith_plate/trail

execute if block ~ ~ ~ air run kill @e[tag=aerialFaithPlate_Block,limit=1,sort=nearest]
execute if block ~ ~ ~ air run kill @s
