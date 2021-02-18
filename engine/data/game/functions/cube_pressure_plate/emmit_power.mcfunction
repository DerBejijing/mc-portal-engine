execute if entity @s[tag=!powered] run playsound minecraft:entity.evoker.cast_spell ambient @a
setblock ~1 ~-1 ~ redstone_torch
setblock ~-1 ~-1 ~ redstone_torch
setblock ~ ~-1 ~1 redstone_torch
setblock ~ ~-1 ~-1 redstone_torch
tag @s add powered
