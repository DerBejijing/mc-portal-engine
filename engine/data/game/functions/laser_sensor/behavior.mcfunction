execute if block ~ ~ ~ air run kill @e[tag=thermaldmb_block,sort=nearest,limit=1]
execute if block ~ ~ ~ air run kill @s
execute as @s[tag=!power] if block ~ ~ ~ redstone_block run setblock ~ ~ ~ stone
execute as @s[tag=power] run function game:laser_sensor/power
