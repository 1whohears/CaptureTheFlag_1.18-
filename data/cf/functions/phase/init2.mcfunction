#init phase 2

scoreboard players set data phase 2

scoreboard players set data ticks 0
scoreboard players set data seconds 0

execute as @a run trigger placeflag
execute as @a run trigger undoflag
scoreboard players reset @a placeflag
scoreboard players reset @a undoflag

title @a title {"text":"ATTACK TIME!","color":"gold"}

#spawn flag at captain if no flag is spawned yet
#TODO use function cf:game/tpbyscore to send the new flag to the last place thee captain was in the overworld
execute if score blue flagState matches 0 if score blue teamSize matches 1.. as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/blue/placeflag
execute if score blue flagState matches 0 if score blue teamSize matches 1.. at @e[tag=center,limit=1] run function cf:game/blue/placeflag
execute if score red flagState matches 0 if score red teamSize matches 1.. as @a[tag=captain,team=red,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/red/placeflag
execute if score red flagState matches 0 if score red teamSize matches 1.. at @e[tag=center,limit=1] run function cf:game/red/placeflag
execute if score green flagState matches 0 if score green teamSize matches 1.. as @a[tag=captain,team=green,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/green/placeflag
execute if score green flagState matches 0 if score green teamSize matches 1.. at @e[tag=center,limit=1] run function cf:game/green/placeflag
execute if score yellow flagState matches 0 if score yellow teamSize matches 1.. as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/yellow/placeflag
execute if score yellow flagState matches 0 if score yellow teamSize matches 1.. at @e[tag=center,limit=1] at @s run function cf:game/yellow/placeflag

##flag compass tracker setup
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 0 0 shulker_box
execute in minecraft:overworld run setblock 0 1 0 bedrock

#give compasses