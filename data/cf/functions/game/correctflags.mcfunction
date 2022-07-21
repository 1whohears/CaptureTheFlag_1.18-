#correct the villagers for the flags

execute if score blue flagState matches 1 at @e[tag=mb] unless @e[tag=vb,distance=..10] run summon villager ~ ~ ~ {Tags:["vb"],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0}],VillagerData:{type:"minecraft:snow"},Offers:{}}
execute if score blue flagState matches 1 at @e[tag=mb] as @e[tag=vb,distance=2..] run tp @s ~ ~-2 ~

execute if score red flagState matches 1 at @e[tag=mr] unless @e[tag=vr,distance=..10] run summon villager ~ ~ ~ {Tags:["vr"],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0}],VillagerData:{type:"minecraft:savanna"},Offers:{}}
execute if score red flagState matches 1 at @e[tag=mr] as @e[tag=vr,distance=2..] run tp @s ~ ~-2 ~

execute if score green flagState matches 1 at @e[tag=mg] unless @e[tag=vg,distance=..10] run summon villager ~ ~ ~ {Tags:["vg"],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0}],VillagerData:{type:"minecraft:jungle"},Offers:{}}
execute if score green flagState matches 1 at @e[tag=mg] as @e[tag=vg,distance=2..] run tp @s ~ ~-2 ~

execute if score yellow flagState matches 1 at @e[tag=my] unless @e[tag=vy,distance=..10] run summon villager ~ ~ ~ {Tags:["vy"],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0}],VillagerData:{type:"minecraft:desert"},Offers:{}}
execute if score yellow flagState matches 1 at @e[tag=my] as @e[tag=vy,distance=2..] run tp @s ~ ~-2 ~