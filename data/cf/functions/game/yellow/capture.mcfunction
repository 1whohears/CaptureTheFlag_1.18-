#capture flag

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryblue] remove carry
tag @s remove carryyellow

scoreboard players set yellow flagState 3

tag @a[team=yellow] remove player

team empty yellow

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the yellow flag!","color":"yellow"}]