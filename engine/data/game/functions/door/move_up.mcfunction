execute if score @s doorDistance < #doorShaft doorDistance run tp @s ~ ~0.2 ~
scoreboard players add @s doorDistance 1
execute if score @s doorDistance = #doorShaft doorDistance run tag @s remove goUp
execute if score @s doorDistance = #doorShaft doorDistance run tag @s add isUp
execute if score @s doorDistance = #doorShaft doorDistance run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 100 0
fill ^-1 ^ ^ ^1 ^ ^ air replace minecraft:barrier

playsound minecraft:ui.toast.out ambient @a ~ ~ ~ 1 0
