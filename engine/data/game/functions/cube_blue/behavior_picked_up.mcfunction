particle minecraft:heart ~ ~1 ~ 0 0 0 0 1
clear @p carrot_on_a_stick
give @p carrot_on_a_stick{CustomModelData:5}
setblock ~ ~ ~ air
kill @e[type=minecraft:falling_block,limit=1,sort=nearest]
kill @s
