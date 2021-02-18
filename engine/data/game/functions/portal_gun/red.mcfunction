summon area_effect_cloud ~ ~ ~ {Duration:1000,Tags:["red","pr_portal","notOnGround","GameObject"]}
tp @e[tag=pr_portal,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~

scoreboard players set @e[tag=pr_portal,sort=nearest,limit=1] bounce 0
execute as @e[tag=pr_portal,sort=nearest,limit=1] at @s run function game:portal_gun/flight_2
