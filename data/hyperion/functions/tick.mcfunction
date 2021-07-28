# Remove tags
tag @a remove hp_rcd

# Drop Crafting
execute as @e[type=item,nbt={Item: {id: "minecraft:nether_star", Count:2b}}] at @s if entity @e[type=item,nbt={Item: {id: "minecraft:stick", Count:1b}}] run function hyperion:drop_crafting

# Right Click Detection
execute as @a[scores={hp_rc=1..},nbt={SelectedItem:{tag:{CustomModelData:860001}}}] at @s run scoreboard players set @s hp_rcd 1
tag @a[scores={hp_rcd=1..}] add hp_rcd

# Raytracing
execute as @a[tag=hp_rcd] at @s run function hyperion:raycasting

# Scoreboard Reset
scoreboard players set @a hp_rc 0
scoreboard players set @a hp_rcd 0