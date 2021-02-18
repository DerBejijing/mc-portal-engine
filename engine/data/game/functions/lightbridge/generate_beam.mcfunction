summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["lightBridgeRay"]}
execute align xyz positioned ~0.5 ~2.5 ~0.5 run tp @e[tag=lightBridgeRay,sort=nearest,limit=1] ~ ~ ~ ~ ~
