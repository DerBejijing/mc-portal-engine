scoreboard objectives remove color
scoreboard objectives add color dummy

scoreboard objectives remove clicked_gun
scoreboard objectives add clicked_gun minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives remove itemData
scoreboard objectives add itemData dummy

scoreboard objectives remove prAge
scoreboard objectives add prAge dummy

scoreboard objectives remove e_clock
scoreboard objectives add e_clock dummy

scoreboard objectives add spreadClock dummy

scoreboard objectives add spreadTimer dummy

scoreboard objectives remove killNear
scoreboard objectives add killNear trigger

scoreboard objectives remove stopPlate
scoreboard objectives add stopPlate trigger

scoreboard objectives remove bounce
scoreboard objectives add bounce dummy

scoreboard objectives remove raycastTemp
scoreboard objectives add raycastTemp dummy

scoreboard objectives remove globalClock
scoreboard objectives add globalClock dummy

scoreboard objectives remove turretSearchTime
scoreboard objectives add turretSearchTime dummy

scoreboard objectives add substract dummy
scoreboard players set #1 substract 1

scoreboard objectives remove menueSelected
scoreboard objectives add menueSelected dummy

scoreboard objectives add doorDistance dummy
scoreboard players set #doorShaft doorDistance 17
scoreboard players set #doorBase doorDistance 1

scoreboard objectives add liftDoorMoves dummy
scoreboard players set #liftManager liftDoorMoves 10
scoreboard players set #liftDoorTimeout liftDoorMoves 5
scoreboard players set #liftDoorClosing liftDoorMoves 5

scoreboard objectives add lightBridgeBeam dummy
scoreboard players set #lightTimeout lightBridgeBeam 10

scoreboard objectives add lbLive dummy
scoreboard players set #LightBridge lbLive 11

scoreboard objectives add monitorStep dummy
scoreboard players set #moveWall monitorStep 10
scoreboard players set #moveMonitorUp monitorStep 40
scoreboard players set #moveAllForward monitorStep 70

scoreboard objectives add turretSchedule dummy
scoreboard players set #searchTimer turretSchedule 20

scoreboard objectives add searchLimit dummy
scoreboard players set #searchLimit searchLimit 20

scoreboard objectives add laserPulse dummy
scoreboard players set #laserPulse laserPulse 1

scoreboard objectives add debug trigger

kill @e[tag=pr_portal]
kill @e[type=area_effect_cloud]
kill @e[tag=paintAcid]
kill @e[tag=blue_paint]
kill @e[tag=turret_search_ray]

clear @a[gamemode=creative] carrot_on_a_stick
clear @a[gamemode=creative] bat_spawn_egg
give @a[gamemode=creative] carrot_on_a_stick{display:{Name:'{"text":"Handheld dual portal device","color":"aqua"}'},CustomModelData:1} 1

clear @a[gamemode=creative] armor_stand
give @a[gamemode=creative] armor_stand{display:{Name:'{"text":"Weighted storage cube","color":"aqua"}'},CustomModelData:1,EntityTag:{Invisible:1b,Small:1b,Tags:["weightedCube","GameObject"]}}
give @p minecraft:armor_stand{display:{Name:'{"text":"Door","color":"aqua"}'},CustomModelData:9,EntityTag:{Invisible:1b,Small:1b,Tags:["doorBase","GameObject"]}}
give @p minecraft:armor_stand{display:{Name:'{"text":"Lift door","color":"aqua"}'},CustomModelData:9,EntityTag:{Invisible:1b,Small:1b,NoGravity:1b,Tags:["liftDoorBase","GameObject"]}}
give @p bat_spawn_egg{display:{Name:'{"text":"Rückstoßgel","color":"aqua"}'},CustomModelData:1,EntityTag:{Silent:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["paint_spreader_blue"]}} 1

gamerule doTileDrops false
