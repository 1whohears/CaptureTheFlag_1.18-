#steal flag green

scoreboard players set green flagState 2

kill @e[tag=mg]
kill @e[tag=vg]

tag @s add carry
tag @s add carrygreen

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" stole the green flag!","color":"green"}]