execute if score @s lightBridgeBeam < #lightTimeout lightBridgeBeam run scoreboard players add @s lightBridgeBeam 1

execute if score @s lightBridgeBeam = #lightTimeout lightBridgeBeam if block ^ ^2 ^-1 minecraft:granite run function game:lightbridge/generate_beam
execute if score @s lightBridgeBeam = #lightTimeout lightBridgeBeam if block ^ ^2 ^-1 minecraft:granite run scoreboard players set @s lightBridgeBeam 0
