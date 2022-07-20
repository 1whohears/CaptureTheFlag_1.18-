#trigger kits

scoreboard players enable @a kit1
scoreboard players enable @a kit2
scoreboard players enable @a kit3
scoreboard players enable @a kit4
scoreboard players enable @a kit5

execute as @a[scores={kit1=1..}] run function cf:kits/select1
execute as @a[scores={kit1=2..}] run function cf:kits/select2
execute as @a[scores={kit1=3..}] run function cf:kits/select3
execute as @a[scores={kit1=4..}] run function cf:kits/select4
execute as @a[scores={kit1=5..}] run function cf:kits/select5