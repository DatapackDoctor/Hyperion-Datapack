effect give @p[tag=clickedHPN,nbt={OnGround:0b}] minecraft:jump_boost 1 255 true
tp @p[tag=clickedHPN] ~ ~ ~
kill @s
execute as @p[tag=clickedHPN] at @s run function hyperion:effect
tag @p remove clickedHPN