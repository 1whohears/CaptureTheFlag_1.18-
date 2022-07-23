#capture flag

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryblue

scoreboard players set blue flagState 3

tag @a[team=blue] remove player

team empty blue

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" captured the blue flag!","color":"blue"}]