#thief drops flag green

tag @s[tag=!carryred,tag=!carryblue,tag=!carryyellow] remove carry
tag @s remove carrygreen

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/green/placeflag
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function cf:game/green/flagatcappos