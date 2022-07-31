#capture flag

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryblue] remove carry
tag @s remove carryyellow

scoreboard players set yellow flagState 3

tag @a[team=yellow] remove player

team empty yellow

execute if score red flagState matches 2 as @a[team=yellow,tag=carryred,limit=1] run function cf:game/red/dropflag
execute if score blue flagState matches 2 as @a[team=yellow,tag=carryblue,limit=1] run function cf:game/blue/dropflag
execute if score green flagState matches 2 as @a[team=yellow,tag=carrygreen,limit=1] run function cf:game/green/dropflag
execute if score yellow flagState matches 2 as @a[team=yellow,tag=carryyellow,limit=1] run function cf:game/yellow/dropflag

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the yellow flag!","color":"yellow"}]