#capture flag

tag @s[tag=!carryblue,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryred

scoreboard players set red flagState 3

tag @a[team=red] remove player

team empty red

execute if score red flagState matches 2 as @a[team=red,tag=carryred,limit=1] run function cf:game/red/dropflag
execute if score blue flagState matches 2 as @a[team=red,tag=carryblue,limit=1] run function cf:game/blue/dropflag
execute if score green flagState matches 2 as @a[team=red,tag=carrygreen,limit=1] run function cf:game/green/dropflag
execute if score yellow flagState matches 2 as @a[team=red,tag=carryyellow,limit=1] run function cf:game/yellow/dropflag

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the red flag!","color":"red"}]