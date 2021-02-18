#summon area_effect_cloud ~ ~ ~ {Tags:["beam"],Duration:2}
#tp @e[tag=beam,limit=1,sort=nearest,tag=!flying] ~ ~0.5 ~ ~ ~
#tp @e[tag=beam,limit=1,sort=nearest,tag=!flying] ^ ^0.5 ^0.6
#scoreboard players set @e[tag=beam,limit=1,sort=nearest,tag=!flying] prAge 0
#execute as @e[tag=beam,limit=1,sort=nearest,tag=!flying] at @s run function game:thermaldmb/flight

particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a

#execute if entity @p[distance=..1] run say player
execute unless block ~ ~ ~ #minecraft:beam_ignore run particle flame ^ ^ ^-0.4 0 0 0 0.01 1


execute if entity @e[tag=laser_sensor,distance=..1] run tag @e[tag=laser_sensor,sort=nearest,limit=1] add power

execute if entity @e[distance=..0.5, tag=thermalRedCube] rotated as @e[tag=thermalRedCube,sort=nearest,limit=1] positioned ^ ^ ^0.5 run function game:thermaldmb/emmit

#unless entity @p[distance=..0.7] 
execute unless entity @e[tag=thermalRedCube, distance=..0.5] unless entity @e[tag=weightedCube, distance=..0.5] unless entity @e[tag=weightedCubeBlue, distance=..0.5] if block ~ ~ ~ #minecraft:beam_ignore if entity @s[distance=..100] positioned ^ ^ ^0.1 run function game:thermaldmb/emmit
