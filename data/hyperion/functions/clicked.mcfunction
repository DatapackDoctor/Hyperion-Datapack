kill @e[tag=hpnas]
tag @s remove clickedHPN
summon armor_stand ~ ~ ~ {NoGravity:1b, Invulnerable:1b, Invisible:1b, Small:1b, Tags:["hpnas"]}
execute as @s at @s run tp @e[type=minecraft:armor_stand,tag=hpnas,limit=1,distance=..1] ~ ~1 ~ ~ ~
tag @s add clickedHPN
scoreboard players set @e[type=armor_stand,tag=hpnas,limit=1,distance=..1] lifeAS 0