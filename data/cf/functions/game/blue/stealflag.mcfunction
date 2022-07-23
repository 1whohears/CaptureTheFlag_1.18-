#steal flag blue

scoreboard players set blue flagState 2

kill @e[tag=mb]
kill @e[tag=vb]

tag @s add carry
tag @s add carryblue

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" stole the blue flag!","color":"blue"}]