#thief drops flag red

tag @s[tag=!carryblue,tag=!carrygreen,tag=!carryyellow] remove carry
tag @s remove carryred

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/red/placeflag
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function cf:game/red/flagatxyz