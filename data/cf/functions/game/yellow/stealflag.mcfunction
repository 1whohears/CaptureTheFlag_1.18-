#steal flag yellow

scoreboard players set yellow flagState 2

kill @e[tag=my]
kill @e[tag=vy]

tag @s add carry
tag @s add carryyellow

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" stole the yellow flag!","color":"yellow"}]