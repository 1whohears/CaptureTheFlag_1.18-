#banned stuff

#the nether and end are just being universally banned for now until I can get tacker compasses to work in those dimensions
kill @a[nbt={Dimension:"minecraft:the_nether"},tag=player]
kill @a[nbt={Dimension:"minecraft:the_end"},tag=player]

#going to the nether
kill @a[nbt={Dimension:"minecraft:the_nether"},tag=carry,tag=player]
#execute as @a[tag=carry] at @s if block ~ ~ ~ minecraft:nether_portal run kill @s

#going to the end
kill @a[nbt={Dimension:"minecraft:the_end"},tag=carry,tag=player]
#execute as @a[tag=carry] at @s if block ~ ~ ~ minecraft:end_portal run kill @s

#other things
kill @e[type=wither]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}]
kill @a[tag=player,nbt={Dimension:"minecraft:the_nether"},y=128,dy=100]
kill @a[tag=player,tag=carry,nbt={FallFlying:1b}]
kill @a[tag=player,tag=carry,scores={pearl=1}]
scoreboard players reset @a pearl