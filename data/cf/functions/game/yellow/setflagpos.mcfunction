#set flag pos yellow

execute in minecraft:overworld run data modify block 0 0 0 Items[3] set value {id:"compass",Count:1b,tag:{track_flag:1b,track_flag_yellow:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}

execute in minecraft:overworld store result block 0 0 0 Items[3].tag.LodestonePos.X int 1 run scoreboard players get @s x
execute in minecraft:overworld store result block 0 0 0 Items[3].tag.LodestonePos.Y int 1 run scoreboard players get @s y
execute in minecraft:overworld store result block 0 0 0 Items[3].tag.LodestonePos.Z int 1 run scoreboard players get @s z