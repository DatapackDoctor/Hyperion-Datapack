execute as @s at @s run tp @s @s
tp @s ~ ~ ~
execute as @s at @s run tp @s @s

title @s actionbar ["",{"text":"-300 Mana (","color":"aqua"},{"text":"Wither Impact","color":"gold"},{"text":")","color":"aqua"}]
scoreboard objectives add health dummy

execute as @e[type=!#hyperion:no_mob,distance=..6] at @s store result score @s health run data get entity @s Health
execute as @e[type=!#hyperion:no_mob,distance=..6] at @s run scoreboard players remove @s health 15
execute as @e[type=!#hyperion:no_mob,distance=..6,scores={health=..1}] at @s[type=!ender_dragon] run kill @s
execute as @e[type=!#hyperion:no_mob,distance=..6] at @s store result entity @s Health float 1 run scoreboard players get @s health

scoreboard objectives remove health

effect give @s minecraft:absorption 5 0 true
particle minecraft:explosion ~ ~ ~ ~ ~ ~ 0 0 normal @a[distance=..50]
playsound minecraft:entity.generic.explode player @a[distance=..50]