#banned stuff

#ban going to the nether as a flag carrier
kill @a[nbt={Dimension:"minecraft:the_nether"},tag=carry,tag=player]

#the end is just banned
kill @a[nbt={Dimension:"minecraft:the_end"},tag=player]

#other things
kill @e[type=wither]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}]
kill @a[tag=player,nbt={Dimension:"minecraft:the_nether"},y=128,dy=100]
kill @a[tag=player,tag=carry,nbt={FallFlying:1b}]
kill @a[tag=player,tag=carry,scores={pearl=1}]
scoreboard players reset @a pearl