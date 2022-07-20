#phase 1 defense

#display

#trigger flag place
execute as @a[tag=captian,team=blue] if score @s placeflag matches 1 run function cf:game/blue/placeflag
execute as @a[tag=captian,team=red] if score @s placeflag matches 1 run function cf:game/red/placeflag
execute as @a[tag=captian,team=green] if score @s placeflag matches 1 run function cf:game/green/placeflag
execute as @a[tag=captian,team=yellow] if score @s placeflag matches 1 run function cf:game/yellow/placeflag

#trigger flag pickup
execute as @a[tag=captian,team=blue] if score @s undoflag matches 1 run function cf:game/blue/undoflag
execute as @a[tag=captian,team=red] if score @s undoflag matches 1 run function cf:game/red/undoflag
execute as @a[tag=captian,team=green] if score @s undoflag matches 1 run function cf:game/green/undoflag
execute as @a[tag=captian,team=yellow] if score @s undoflag matches 1 run function cf:game/yellow/undoflag

#keep people on their side of the map
execute if score data teamnum matches 2 at @e[tag=center,limit=1] run function cf:game/correctside1
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run function cf:game/correctside2

#keep villager in correct spot or respawn it if it dies
function cf:game/correctflags

#respawns
function cf:game/respawn

#bans
function cf:game/bans

#switch to attack time