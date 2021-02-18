tp @s ^ ^ ^1


execute if entity @e[tag=portal_red,distance=..0.5] run kill @s
execute if entity @e[tag=portal_blue,distance=..0.5] run kill @s
#execute if entity @e[tag=portal_red,distance=..0.5] align xzy positioned ~0.5 ~ ~0.5 run tp @s ~ ~0.5 ~
#execute if entity @e[tag=portal_blue,distance=..0.5] align xzy positioned ~0.5 ~ ~0.5 run tp @s ~ ~0.5 ~


execute if block ^ ^ ^1 #minecraft:lightbridge_barrier run kill @s
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["lbElement"]}
scoreboard players set @e[tag=lbElement,sort=nearest,limit=1] lbLive 0
#particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
