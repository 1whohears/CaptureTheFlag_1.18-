#init phase 2

scoreboard players set data phase 2

scoreboard players set data ticks 0
scoreboard players set data seconds 0

title @a title {"text":"ATTACK TIME!","color":"gold"}

#spawn flag at captain if no flag is spawned yet

##flag compass tracker setup
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 0 0 shulker_box
execute in minecraft:overworld run setblock 0 1 0 bedrock

#set flag position in shulkers

#give compasses