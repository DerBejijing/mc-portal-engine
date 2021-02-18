#data + f-toggle
execute as @a run function game:data
execute as @a run function game:itemswap

#cube
execute as @e[tag=weightedCube,tag=!initialized,nbt={OnGround:1b}] at @s run function game:cube/spawn
execute as @e[tag=weightedCube] at @s run function game:cube/behavior
execute as @e[tag=weightedCube] at @s run data merge entity @s {Time:1}

#cube Pressure plate
execute as @e[tag=cubePressurePlate,tag=!initialized] at @s run function game:cube_pressure_plate/init
execute as @e[tag=cubePressurePlate] at @s run function game:cube_pressure_plate/behavior

#portal filling red
execute as @e[tag=portal_filling_red] at @s run data merge entity @s {Time:1}
execute as @e[tag=portal_filling_blue] at @s run data merge entity @s {Time:1}

#Thermal Discouragement Beam
execute as @e[tag=thermalDiscouragementBeam,tag=!initialized] at @s run function game:thermaldmb/init
execute as @e[tag=thermaldmb_block] at @s run data merge entity @s {Time:1}
execute as @e[tag=thermalDiscouragementBeam] at @s run function game:thermaldmb/behavior

#Discouragement Redirection Cube
execute as @e[tag=thermalRedCube,tag=!initialized,tag=!inactive] at @s run function game:thermal_redirection_cube/init
execute as @e[tag=thermalRedCube,tag=!inactive] at @s run function game:thermal_redirection_cube/behavior
execute as @e[tag=thermaldmb_redirection,tag=!inactive] at @s run data merge entity @s {Time:1}

#Laser reciever
execute as @e[tag=laser_sensor,tag=!initialized] at @s run function game:laser_sensor/init
execute as @e[tag=laser_sensor] at @s run function game:laser_sensor/behavior

#Aerial Faith Plate
execute as @e[tag=aerialFaithPlate,tag=!initialized] at @s run function game:aerial_faith_plate/init
execute as @e[tag=aerialFaithPlate] at @s run function game:aerial_faith_plate/behavior
execute as @e[tag=aerialFaithPlate_Block] run data merge entity @s {Time:1}
tp @p @e[tag=aefp_trail,limit=1]

#door
execute as @e[tag=doorBase,tag=!initialized] at @s run function game:door/init
execute as @e[tag=doorBase] at @s run function game:door/behavior
execute as @e[tag=goUp] at @s run function game:door/move_up
execute as @e[tag=doorBlock] run data merge entity @s {Time:1}
execute as @e[tag=goDown] at @s run function game:door/move_down
execute as @e[tag=door_controll_block] run data merge entity @s {Time:1}

#liftdoor
execute as @e[tag=liftDoorBase,tag=!initialized] at @s run function game:lift_door/init
execute as @e[tag=liftDoorBase] at @s run function game:lift_door/behavior
execute as @e[tag=liftDoorBase,tag=opening] at @s run execute if score @s liftDoorMoves < #liftManager liftDoorMoves run function game:lift_door/slide_opening
execute as @e[tag=liftDoorBase,tag=closing] at @s run function game:lift_door/slide_closing
execute as @e[tag=liftDoorBaseBlock] run data merge entity @s {Time:1}

#lightbridge
execute as @e[tag=lightBridgeSpawn] at @s run function game:lightbridge/spawn
execute as @e[tag=lightBridge,tag=!initialized] at @s run function game:lightbridge/init
execute as @e[tag=lightBridge] at @s run function game:lightbridge/behavior
execute as @e[tag=lbElement] at @s run function game:lightbridge/lightbridge_element
execute as @e[tag=lightBridgeRay] at @s run function game:lightbridge/ray_flight

#paint
execute as @e[tag=paint_spreader_blue,tag=!initialized] at @s run function game:paint_spreader_blue/init
execute as @e[tag=paint_spreader_blue] at @s run function game:paint_spreader_blue/generate
execute as @e[tag=paint_spreader_model] at @s run data merge entity @s {Time:1}
execute as @e[tag=blue_paint] at @s run function game:paint_spreader_blue/paint
execute as @e[tag=white_blue] at @s run execute if block ~ ~ ~ air run kill @s
execute as @e[tag=white_blue] at @s run setblock ~ ~ ~ minecraft:white_wool
execute as @e[tag=gray_blue] at @s run execute if block ~ ~ ~ air run kill @s
execute as @e[tag=gray_blue] at @s run setblock ~ ~ ~ minecraft:blue_wool
execute as @e[tag=weightedCubeBlue,tag=!initialized,nbt={OnGround:1b}] at @s run function game:cube_blue/spawn
execute as @e[tag=weightedCubeBlue] at @s run function game:cube_blue/behavior
execute as @e[tag=weightedCubeBlue] at @s run data merge entity @s {Time:1}

#acid
execute as @e[tag=acid_spreader,tag=!initialized] at @s run function game:acid_spreader/init
execute as @e[tag=acid_spreader] at @s run function game:acid_spreader/generate
execute as @e[tag=acid_spreader_model] at @s run data merge entity @s {Time:1}
execute as @e[tag=paintAcid] at @s run function game:acid_spreader/paint
execute as @e[tag=white_yellow] at @s run execute if block ~ ~ ~ air run kill @s
execute as @e[tag=white_yellow] at @s run setblock ~ ~ ~ minecraft:yellow_wool
execute as @e[tag=gray_yellow] at @s run execute if block ~ ~ ~ air run kill @s
execute as @e[tag=gray_yellow] at @s run setblock ~ ~ ~ minecraft:lime_wool

#turret
execute as @e[tag=turret, tag=!initialized] at @s run function game:turret/init
execute as @e[tag=turret] at @s run function game:turret/behavior

#player
execute as @a at @s run function game:player

#Click Detection
execute as @a[scores={clicked_gun=1..,itemData=1}] at @s run function game:portal_gun/blue
execute as @a[scores={clicked_gun=1..,itemData=2}] at @s run function game:portal_gun/red
execute as @a[scores={clicked_gun=1..,itemData=3},nbt={OnGround:1b}] at @s run function game:cube/cube_place
execute as @a[scores={clicked_gun=1..,itemData=4},nbt={OnGround:1b}] at @s run function game:thermal_redirection_cube/cube_place
execute as @a[scores={clicked_gun=1..,itemData=5},nbt={OnGround:1b}] at @s run function game:cube_blue/cube_place
scoreboard players reset @a clicked_gun

#inactive Portal removement
kill @e[tag=portal_red,tag=!active]
kill @e[tag=portal_blue,tag=!active]

#Portal Behavior
execute as @e[tag=portal] at @s run execute if entity @p[distance=..0.5] run function game:portal/behavior

#Portal Projectile
kill @e[tag=pr_portal,scores={prAge=10000..}]
kill @e[tag=portal_filling_red,tag=!active_filling]
kill @e[tag=portal_filling_blue,tag=!active_filling]

#debug
scoreboard players enable @a debug
scoreboard players set @a[scores={debug=2..}] debug 0

#KillOBJ triggers
scoreboard players enable @a killObj
execute if score @p killObj matches 1.. run execute as @e[tag=weightedCube] at @s run setblock ~ ~ ~ air
execute if score @p killObj matches 1.. run execute as @e[tag=cubePressurePlate] at @s run setblock ~ ~ ~ air
execute if score @p killObj matches 1.. run kill @e[tag=GameObject]
execute if score @p killObj matches 1.. run scoreboard players reset @a killObj

#KillNEAR triggers
scoreboard players enable @a killNear
execute if score @p killNear matches 1.. run execute as @p at @s run kill @e[tag=GameObject,sort=nearest,limit=1]
execute if score @p killNear matches 1.. run scoreboard players reset @a killNear

#Stop aerial Faith Plate Bounce
scoreboard players enable @a stopPlate
execute if score @p stopPlate matches 1.. run kill @e[tag=aefp_trail]
execute if score @p stopPlate matches 1.. run scoreboard players reset @a stopPlate
