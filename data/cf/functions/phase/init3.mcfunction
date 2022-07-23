#init phase 3

scoreboard players set data phase 3

title @a title {"text":"DEATHMATCH!","color":"dark_purple"}
tellraw @a {"text":"DEATHMATCH!","bold":true,"color":"dark_purple"}

clear @a minecraft:compass{track_flag:1b}

tag @a remove carry
tag @a remove carryblue
tag @a remove carryred
tag @a remove carrygreen
tag @a remove carryyellow

kill @e[tag=mb]
kill @e[tag=vb]
kill @e[tag=mr]
kill @e[tag=vr]
kill @e[tag=mg]
kill @e[tag=vg]
kill @e[tag=my]
kill @e[tag=vy]

worldborder set 10 600