execute if block ~ ~ ~ minecraft:note_block[note=1] if entity @p[scores={itemData=1}] run function game:thermal_redirection_cube/behavior_picked_up
execute if block ~ ~ ~ minecraft:note_block[note=1] if entity @p[scores={itemData=2}] run function game:thermal_redirection_cube/behavior_picked_up

execute if block ~ ~ ~ minecraft:note_block[note=1] run setblock ~ ~ ~ note_block


execute if block ~ ~ ~ air run kill @e[tag=thermaldmb_redirection,sort=nearest,limit=1,distance=..1]
execute if block ~ ~ ~ air run kill @s
execute if entity @e[tag=beam,tag=flying,distance=..1.2] run function game:thermaldmb/spawn
