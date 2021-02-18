scoreboard players add @s laserPulse 1

#execute if block ~ ~ ~ redstone_lamp[lit=true] as @s at @s run function game:thermaldmb/emmit
execute if block ~ ~ ~ air run kill @e[tag=thermaldmb_block,limit=1,sort=nearest]
execute if block ~ ~ ~ air run kill @s

execute if score @s laserPulse = #laserPulse laserPulse if block ~ ~ ~ redstone_lamp[lit=true] positioned ^ ^0.5 ^0.6 run function game:thermaldmb/emmit
execute if score @s laserPulse = #laserPulse laserPulse run scoreboard players set @s laserPulse 0
