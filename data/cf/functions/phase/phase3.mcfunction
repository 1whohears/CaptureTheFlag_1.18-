#phase 3 sudden death

#tp players that die to death point and put them in spectator
execute as @a[tag=player,nbt={DeathTime:0s}] run function cf:game/die

#make random player captain if they die
execute unless entity @a[tag=captain,team=red] run tag @r[tag=player,team=red] add captain
execute unless entity @a[tag=captain,team=blue] run tag @r[tag=player,team=blue] add captain
execute unless entity @a[tag=captain,team=green] run tag @r[tag=player,team=greeen] add captain
execute unless entity @a[tag=captain,team=yellow] run tag @r[tag=player,team=yellow] add captain

#track team captain
execute as @a[tag=captain,team=red,limit=1] run function cf:game/red/setflagpos
execute as @a[tag=captain,team=blue,limit=1] run function cf:game/blue/setflagpos
execute as @a[tag=captain,team=green,limit=1] run function cf:game/green/setflagpos
execute as @a[tag=captain,team=yellow,limit=1] run function cf:game/yellow/setflagpos

#track switching
scoreboard players enable @a[tag=player] trackred
scoreboard players enable @a[tag=player] trackblue
scoreboard players enable @a[tag=player] trackgreen
scoreboard players enable @a[tag=player] trackyellow
execute as @a[tag=player] if score @s trackred matches 1 run function cf:game/red/gettracker
execute as @a[tag=player] if score @s trackblue matches 1 run function cf:game/blue/gettracker
execute as @a[tag=player] if score @s trackgreen matches 1 run function cf:game/green/gettracker
execute as @a[tag=player] if score @s trackyellow matches 1 run function cf:game/yellow/gettracker

#update trackers 

#check for winner
execute if score notempty teamSize matches 1 if score red teamSize matches 1.. run function cf:game/red/win
execute if score notempty teamSize matches 1 if score blue teamSize matches 1.. run function cf:game/blue/win
execute if score notempty teamSize matches 1 if score green teamSize matches 1.. run function cf:game/green/win
execute if score notempty teamSize matches 1 if score yellow teamSize matches 1.. run function cf:game/yellow/win