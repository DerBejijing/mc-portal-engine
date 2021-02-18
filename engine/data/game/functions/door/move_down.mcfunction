tag @s remove isUp
execute if score @s doorDistance > #doorBase doorDistance run tp @s ~ ~-0.2 ~
scoreboard players operation @s doorDistance -= #1 substract
execute if score @s doorDistance = #doorBase doorDistance run tag @s remove goDown
execute if score @s doorDistance = #doorBase doorDistance run playsound minecraft:block.iron_door.close ambient @a ~ ~ ~ 100 0
fill ^-1 ^ ^ ^1 ^ ^ minecraft:barrier replace minecraft:air

playsound minecraft:ui.toast.out ambient @a ~ ~ ~ 1 0
