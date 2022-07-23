#thief drops flag blue

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryblue

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/blue/placeflag
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function cf:game/blue/flagatxyz