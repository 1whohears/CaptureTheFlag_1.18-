#place flag red

scoreboard players reset @s placeflag

scoreboard players set red flagState 1

kill @e[tag=mr]
kill @e[tag=vr]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mr"],CustomName:'{"text":"Red Flag","color":"red","bold":true,"underlined":true}'}

execute as @e[tag=mr,limit=1] store result score @s x run data get entity @s Pos[0]
execute as @e[tag=mr,limit=1] store result score @s y run data get entity @s Pos[1]
execute as @e[tag=mr,limit=1] store result score @s z run data get entity @s Pos[2]

execute as @e[tag=mr,limit=1] run function cf:game/red/setflagpos