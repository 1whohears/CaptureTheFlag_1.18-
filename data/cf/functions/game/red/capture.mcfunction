#capture flag

tag @s[tag=!carryblue,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryred

scoreboard players set red flagState 3

tag @a[team=red] remove player

team empty red

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the red flag!","color":"red"}]