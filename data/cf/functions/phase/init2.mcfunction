#init phase 2

scoreboard players set data phase 2

scoreboard players set data ticks 0
scoreboard players set data seconds 0

execute as @a run trigger placeflag
execute as @a run trigger undoflag
scoreboard players reset @a placeflag
scoreboard players reset @a undoflag

title @a title {"text":"ATTACK TIME!","color":"gold"}
tellraw @a {"text":"ATTACK TIME!","bold":true,"color":"gold"}

#spawn flag at captain if no flag is spawned yet
execute if score red flagState matches 0 if score red teamSize matches 1.. as @a[tag=captain,team=red,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/red/placeflag
execute if score red flagState matches 0 if score red teamSize matches 1.. as @a[tag=captain,team=red] run function cf:game/red/flagatxyz

execute if score blue flagState matches 0 if score blue teamSize matches 1.. as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/blue/placeflag
execute if score blue flagState matches 0 if score blue teamSize matches 1.. as @a[tag=captain,team=blue] run function cf:game/blue/flagatxyz

execute if score green flagState matches 0 if score green teamSize matches 1.. as @a[tag=captain,team=green,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/green/placeflag
execute if score green flagState matches 0 if score green teamSize matches 1.. as @a[tag=captain,team=green] run function cf:game/green/flagatxyz

execute if score yellow flagState matches 0 if score yellow teamSize matches 1.. as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:overworld"}] at @s run function cf:game/yellow/placeflag
execute if score yellow flagState matches 0 if score yellow teamSize matches 1.. as @a[tag=captain,team=yellow] run function cf:game/yellow/flagatxyz

##flag compass tracker setup
execute in minecraft:overworld run forceload add 0 0
#blue
execute in minecraft:overworld run setblock 0 -64 0 shulker_box
execute in minecraft:overworld run setblock 0 -63 0 bedrock
#red
execute in minecraft:overworld run setblock 1 -64 0 shulker_box
execute in minecraft:overworld run setblock 1 -63 0 bedrock
#green
execute in minecraft:overworld run setblock 2 -64 0 shulker_box
execute in minecraft:overworld run setblock 2 -63 0 bedrock
#yellow
execute in minecraft:overworld run setblock 3 -64 0 shulker_box
execute in minecraft:overworld run setblock 3 -63 0 bedrock

#give compasses
execute as @a[team=blue] run function cf:game/red/gettracker
execute as @a[team=red] run function cf:game/blue/gettracker
execute as @a[team=yellow] run function cf:game/green/gettracker
execute as @a[team=green] run function cf:game/yellow/gettracker