scoreboard players set @s lifeAS 100
tp @s ^ ^ ^-1.75
execute as @e[type=armor_stand,tag=hpnas,scores={lifeAS=..100}] at @s unless block ~ ~ ~ minecraft:air run tp @s ^ ^ ^1.75
execute as @e[type=armor_stand,tag=hpnas,scores={lifeAS=..100}] at @s unless block ~ ~1 ~ minecraft:air run tp @s ^ ^ ^1.75