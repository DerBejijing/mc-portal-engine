execute if block ~ ~ ~ air if entity @s[tag=liftDoorOpen] run kill @e[tag=liftDoorRailOpen,sort=nearest,limit=2]
execute if block ~ ~ ~ air if entity @s[tag=liftDoorClosed] run kill @e[tag=liftDoorRail,sort=nearest,limit=1]
execute if block ~ ~ ~ air if entity @s[tag=liftDoorClosed] run kill @e[tag=liftDoorBaseBlock,sort=nearest,limit=3]
execute if block ~ ~ ~ air run fill ^-1 ^1 ^ ^1 ^3 ^ minecraft:air
execute if block ~ ~ ~ air run kill @s



execute if entity @s[tag=liftDoorClosed,tag=!opening,tag=!closing] if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run function game:lift_door/open
execute if entity @s[tag=liftDoorOpen,tag=!opening,tag=!closing] if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run function game:lift_door/slide_closing
