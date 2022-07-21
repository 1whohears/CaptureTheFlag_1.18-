#place flag green

scoreboard players reset @s placeflag

scoreboard players set green flagState 1

kill @e[tag=mg]
kill @e[tag=vg]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mg"],CustomName:'{"text":"Green Flag","color":"green","bold":true,"underlined":true}'}

execute as @e[tag=mg,limit=1] store result score @s x run data get entity @s Pos[0]
execute as @e[tag=mg,limit=1] store result score @s y run data get entity @s Pos[1]
execute as @e[tag=mg,limit=1] store result score @s z run data get entity @s Pos[2]

execute as @e[tag=mg,limit=1] run function cf:game/green/setflagpos