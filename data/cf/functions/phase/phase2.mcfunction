#phase 2 attack

#respawns
function cf:game/respawn

#bans
function cf:game/bans

#check if flags were stolen
execute if score red flagState matches 1 at @e[tag=mr] unless entity @e[tag=vb,distance=..4] as @p[scores={villagerKills=1..},team=!red,distance=..4] run function cf:game/red/stealflag
execute if score blue flagState matches 1 at @e[tag=mb] unless entity @e[tag=vb,distance=..4] as @p[scores={villagerKills=1..},team=!blue,distance=..4] run function cf:game/blue/stealflag
execute if score green flagState matches 1 at @e[tag=mg] unless entity @e[tag=vb,distance=..4] as @p[scores={villagerKills=1..},team=!green,distance=..4] run function cf:game/green/stealflag
execute if score yellow flagState matches 1 at @e[tag=my] unless entity @e[tag=vb,distance=..4] as @p[scores={villagerKills=1..},team=!yellow,distance=..4] run function cf:game/yellow/stealflag
scoreboard players reset @a villagerKills

#track the thief
execute if score data ticks matches 0 if score red flagState matches 2 as @a[tag=carryred,limit=1] run function cf:game/red/setflagpos
execute if score data ticks matches 0 if score blue flagState matches 2 as @a[tag=carryblue,limit=1] run function cf:game/blue/setflagpos
execute if score data ticks matches 0 if score green flagState matches 2 as @a[tag=carrygreen,limit=1] run function cf:game/green/setflagpos
execute if score data ticks matches 0 if score yellow flagState matches 2 as @a[tag=carryyellow,limit=1] run function cf:game/yellow/setflagpos

#if the thief is killed put the flag back
execute if score red flagState matches 2 as @a[tag=carryred,limit=1,nbt={DeathTime:1s}] run function cf:game/red/dropflag
execute if score blue flagState matches 2 as @a[tag=carryblue,limit=1,nbt={DeathTime:1s}] run function cf:game/blue/dropflag
execute if score green flagState matches 2 as @a[tag=carrygreen,limit=1,nbt={DeathTime:1s}] run function cf:game/green/dropflag
execute if score yellow flagState matches 2 as @a[tag=carryyellow,limit=1,nbt={DeathTime:1s}] run function cf:game/yellow/dropflag

#check if the flag has been captured
execute if score red flagState matches 1 at @e[tag=mr] as @a[distance=..2,team=red,tag=carry] run function cf:game/capture
execute if score blue flagState matches 1 at @e[tag=mb] as @a[distance=..2,team=blue,tag=carry] run function cf:game/capture
execute if score green flagState matches 1 at @e[tag=mg] as @a[distance=..2,team=green,tag=carry] run function cf:game/capture
execute if score yellow flagState matches 1 at @e[tag=my] as @a[distance=..2,team=yellow,tag=carry] run function cf:game/capture

#TODO thieves drop the flag if they disconnect

#keep villager in correct spot or respawn it if it dies
function cf:game/correctflags

#spectators
function cf:game/spectators

#check for winner
execute if score notempty teamSize matches 1 if score red flagState matches 1 run function cf:game/red/win
execute if score notempty teamSize matches 1 if score blue flagState matches 1 run function cf:game/blue/win
execute if score notempty teamSize matches 1 if score green flagState matches 1 run function cf:game/green/win
execute if score notempty teamSize matches 1 if score yellow flagState matches 1 run function cf:game/yellow/win

#start sudden death
execute if score data seconds = data attackTime run function cf:phase/init3