#place flag blue

scoreboard players reset @s placeflag

scoreboard players set blue flagState 1

kill @e[tag=mb]
kill @e[tag=vb]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mb"],CustomName:'{"text":"Blue Flag","color":"blue","bold":true,"underlined":true}'}