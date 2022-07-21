#place flag blue

scoreboard players reset @s placeflag

scoreboard players set blue flagState 1

kill @e[tag=mb]
kill @e[tag=vb]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mb"],CustomName:'{"text":"Blue Flag","color":"blue","bold":true,"underlined":true}'}

execute as @e[tag=mb,limit=1] store result score @s x run data get entity @s Pos[0]
execute as @e[tag=mb,limit=1] store result score @s y run data get entity @s Pos[1]
execute as @e[tag=mb,limit=1] store result score @s z run data get entity @s Pos[2]

execute as @e[tag=mb,limit=1] run function cf:game/blue/setflagpos