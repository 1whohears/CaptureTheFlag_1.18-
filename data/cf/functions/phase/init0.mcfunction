#init phase 0

#reset scoreboard
scoreboard objectives setdisplay sidebar
scoreboard players set data phase 0
scoreboard players set data newWorldMode 0
scoreboard players set blue flagState 0
scoreboard players set red flagState 0
scoreboard players set green flagState 0
scoreboard players set yellow flagState 0
scoreboard players set data defenseTime 600
scoreboard players set data attackTime 1800
scoreboard players set data teamnum 2
scoreboard players set data enablekits 0

#reset tags
tag @a remove died
tag @a remove captain
tag @a remove player
tag @a remove carryblue
tag @a remove carryred
tag @a remove carrygreen
tag @a remove carryyellow

#reset teams
team empty blue
team empty red
team empty green
team empty yellow

#other
worldborder set 59999968 0
clear @a minecraft:compass{track_flag:1b}
gamemode survival @a[nbt={playerGameType:3}]

#kill flag entities