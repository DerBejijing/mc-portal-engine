execute if block ~ ~ ~ minecraft:note_block[note=1] if entity @p[scores={itemData=1}] run function game:cube/behavior_picked_up
execute if block ~ ~ ~ minecraft:note_block[note=1] if entity @p[scores={itemData=2}] run function game:cube/behavior_picked_up

execute if block ~ ~ ~ minecraft:note_block[note=1] run setblock ~ ~ ~ note_block
