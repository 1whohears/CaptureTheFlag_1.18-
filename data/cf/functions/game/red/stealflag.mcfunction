#steal flag red

scoreboard players set red flagState 2

kill @e[tag=mr]
kill @e[tag=vr]

tag @s add carry
tag @s add carryred

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" stole the red flag!","color":"red"}]