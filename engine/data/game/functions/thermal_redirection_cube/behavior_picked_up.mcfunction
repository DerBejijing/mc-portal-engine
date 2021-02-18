tag @s add inactive
clear @p carrot_on_a_stick
give @p carrot_on_a_stick{CustomModelData:4}

kill @e[tag=thermaldmb_redirection,sort=nearest,limit=1,distance=..1]
kill @s
setblock ~ ~ ~ air
