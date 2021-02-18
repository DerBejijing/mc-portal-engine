execute unless entity @e[tag=portal_red,distance=..2] run execute as @e[tag=portal_blue] at @s run setblock ~ ~ ~ minecraft:white_terracotta
execute unless entity @e[tag=portal_red,distance=..2] run execute as @e[tag=portal_blue] at @s run setblock ~ ~1 ~ minecraft:orange_terracotta
execute unless entity @e[tag=portal_red,distance=..2] run tag @e[tag=portal_blue] remove active
execute unless entity @e[tag=portal_red,distance=..2] run tag @e[tag=portal_filling_blue] remove active_filling


execute unless entity @e[tag=portal_red,distance=..2] run fill ~ ~ ~ ~ ~1 ~ air
execute unless entity @e[tag=portal_red,distance=..2] align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["portal_blue","active","portal","GameObject"]}

execute unless entity @e[tag=portal_red,distance=..2] run execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:blue_terracotta"},NoGravity:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["portal_filling_blue","active_filling","GameObject"]}
execute unless entity @e[tag=portal_red,distance=..2] run execute align xyz positioned ~0.5 ~1 ~0.5 run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:light_blue_terracotta"},NoGravity:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["portal_filling_blue","active_filling","GameObject"]}

execute as @e[tag=portal_blue] at @s run function game:portal_gun/portal/direction
