#place flag yellow

scoreboard players reset @s placeflag

scoreboard players set yellow flagState 1

kill @e[tag=my]
kill @e[tag=vy]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["my"],CustomName:'{"text":"Yellow Flag","color":"yellow","bold":true,"underlined":true}'}

execute as @e[tag=my,limit=1] run function cf:game/storexyz

execute as @e[tag=my,limit=1] run function cf:game/yellow/setflagpos