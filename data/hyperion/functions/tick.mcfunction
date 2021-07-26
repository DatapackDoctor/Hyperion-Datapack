scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 860001}}},scores={rightClickHPN=1..}] clickHPN 1

execute as @a[scores={clickHPN=1..}] at @s run function hyperion:clicked
execute as @e[type=armor_stand,tag=hpnas,scores={lifeAS=..100}] at @s if block ~ ~ ~ minecraft:air run function hyperion:raycasting
execute as @e[type=armor_stand,tag=hpnas,scores={lifeAS=..100}] at @s unless block ~ ~ ~ minecraft:air run function hyperion:noair
execute as @e[type=armor_stand,tag=hpnas,scores={lifeAS=100..},sort=nearest] at @s run function hyperion:tp

scoreboard players set @a rightClickHPN 0
scoreboard players set @a clickHPN 0