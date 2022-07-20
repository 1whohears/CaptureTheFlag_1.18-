#banned stuff

#going to the nether
kill @a[nbt={Dimension:"minecraft:the_nether"},tag=carry]
#execute as @a[tag=carry] at @s if block ~ ~ ~ minecraft:nether_portal run kill @s

#going to the end
kill @a[nbt={Dimension:"minecraft:the_end"},tag=carry]
#execute as @a[tag=carry] at @s if block ~ ~ ~ minecraft:end_portal run kill @s

#other things
kill @e[type=wither]
kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",Count:1b}}]
kill @a[tag=carry,nbt={FallFlying:1b}]
kill @a[tag=carry,scores={pearl=1}]
scoreboard players reset @a pearl