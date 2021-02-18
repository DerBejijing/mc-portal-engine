#Portalgun
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick", Slot:-106b, tag:{CustomModelData:1}}]}] run give @s carrot_on_a_stick{CustomModelData:2}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick", Slot:-106b, tag:{CustomModelData:1}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick", Slot:-106b, tag:{CustomModelData:2}}]}] run give @s carrot_on_a_stick{CustomModelData:1}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick", Slot:-106b, tag:{CustomModelData:2}}]}] run replaceitem entity @s weapon.offhand minecraft:air

#Puzzle Elements
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:1}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"15000 Megawatt Button","color":"aqua"}'},CustomModelData:2,EntityTag:{Invisible:1b,NoGravity:1b,Tags:["cubePressurePlate","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:1}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:2}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Thermal discouragement beam","color":"aqua"}'},CustomModelData:3,EntityTag:{Invisible:1b,Small:1b,NoGravity:1b,Tags:["thermalDiscouragementBeam","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:2}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:3}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Thermal discouragement beam reciever","color":"aqua"}'},CustomModelData:4,EntityTag:{Invisible:1b,Small:1b,NoGravity:1b,Tags:["laser_sensor","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:3}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:4}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Discouragement redirection cube","color":"aqua"}'},CustomModelData:5,EntityTag:{Invisible:1b,Tags:["thermalRedCube","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:4}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:5}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Aerial faith plate","color":"aqua"}'},CustomModelData:6,EntityTag:{Invisible:1b,Small:1b,Tags:["aerialFaithPlate","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:5}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:6}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Excursion funnel (unfunctional)","color":"aqua"}'},CustomModelData:7,EntityTag:{Invisible:1b,Small:1b,Tags:["GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:6}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:7}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Weighted storage cube","color":"aqua"}'},CustomModelData:8,EntityTag:{Invisible:1b,Small:1b,Tags:["weightedCube","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:7}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:8}}]}] run give @s minecraft:armor_stand{display:{Name:'{"text":"Turret","color":"aqua"}'},CustomModelData:1,EntityTag:{Invisible:0b,Small:1b,Tags:["turret","GameObject"]}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand", Slot:-106b, tag:{CustomModelData:8}}]}] run replaceitem entity @s weapon.offhand minecraft:air

#gel
execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:1}}]}] run give @s bat_spawn_egg{display:{Name:'{"text":"Acid","color":"aqua"}'},CustomModelData:2,EntityTag:{Silent:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["acid_spreader","GameObject"]}} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:1}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:2}}]}] run give @s bat_spawn_egg{display:{Name:'{"text":"Hardlight-Bridge","color":"aqua"}'},CustomModelData:3,EntityTag:{Silent:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["lightBridgeSpawn","GameObject"]}} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:2}}]}] run replaceitem entity @s weapon.offhand minecraft:air

execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:3}}]}] run give @s bat_spawn_egg{display:{Name:'{"text":"Repulsion gel","color":"aqua"}'},CustomModelData:1,EntityTag:{Silent:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["paint_spreader_blue","GameObject"]}} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg", Slot:-106b, tag:{CustomModelData:3}}]}] run replaceitem entity @s weapon.offhand minecraft:air
