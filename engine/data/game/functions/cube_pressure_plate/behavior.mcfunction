#execute if block ~ ~1 ~ note_block run function game:cube_pressure_plate/emmit_power
#execute if block ~ ~1 ~ air run function game:cube_pressure_plate/unpower

execute if block ~ ~ ~ air run kill @s

execute positioned ~ ~1 ~ unless entity @e[tag=weightedCube,distance=..0.5] run execute positioned ~ ~-1 ~ run function game:cube_pressure_plate/unpower
execute positioned ~ ~1 ~ if entity @e[tag=weightedCube,distance=..0.5] run execute positioned ~ ~-1 ~ run function game:cube_pressure_plate/emmit_power
