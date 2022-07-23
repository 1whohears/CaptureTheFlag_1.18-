#thief drops flag yellow

tag @s[tag=!carryred,tag=!carrygreen,tag=!carryblue] remove carry
tag @s remove carryyellow

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/yellow/placeflag
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function cf:game/yellow/flagatcappos