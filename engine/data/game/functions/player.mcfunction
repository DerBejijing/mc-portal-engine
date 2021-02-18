execute align xy positioned ~ ~-0.5 ~ if entity @e[tag=weightedCubeBlue,distance=..1] run effect give @s minecraft:jump_boost 1 5 true

execute if block ~ ~-0.5 ~ minecraft:blue_wool run effect give @s minecraft:jump_boost 1 5 true
execute if block ~ ~-0.5 ~ minecraft:white_wool run effect give @s minecraft:jump_boost 1 5 true

execute if block ~ ~-0.5 ~ minecraft:air run effect clear @s jump_boost

function game:rotation
#execute if entity @s[sores={itemData=4}] if entity @e[tag=beam,distance=..0.5] run function game:player/raycast
