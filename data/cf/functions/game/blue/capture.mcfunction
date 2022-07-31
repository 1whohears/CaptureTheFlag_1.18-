#capture flag

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryblue

scoreboard players set blue flagState 3

tag @a[team=blue] remove player

team empty blue

execute if score red flagState matches 2 as @a[team=green,tag=carryred,limit=1] run function cf:game/red/dropflag
execute if score blue flagState matches 2 as @a[team=green,tag=carryblue,limit=1] run function cf:game/blue/dropflag
execute if score green flagState matches 2 as @a[team=green,tag=carrygreen,limit=1] run function cf:game/green/dropflag
execute if score yellow flagState matches 2 as @a[team=green,tag=carryyellow,limit=1] run function cf:game/yellow/dropflag

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the blue flag!","color":"blue"}]