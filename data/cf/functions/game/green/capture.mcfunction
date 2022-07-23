#capture flag

tag @s[tag=!carryred,tag=!carryblue,tag=!carryyellow] remove carry
tag @s remove carrygreen

scoreboard players set green flagState 3

tag @a[team=green] remove player

team empty green

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the green flag!","color":"green"}]