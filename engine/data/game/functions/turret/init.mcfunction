scoreboard players set @s turretSchedule 0

execute if entity @p[tag=north] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=east] run tp @s ~ ~ ~ 90 ~
execute if entity @p[tag=south] run tp @s ~ ~ ~ 180 ~
execute if entity @p[tag=west] run tp @s ~ ~ ~ -90 ~

tag @s add initialized
