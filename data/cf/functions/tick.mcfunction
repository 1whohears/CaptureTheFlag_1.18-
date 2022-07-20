#tick

function cf:timer/seconds

scoreboard players reset notempty teamSize
execute if score blue teamSize matches 1.. run scoreboard add notempty teamSize 1
execute if score red teamSize matches 1.. run scoreboard add notempty teamSize 1
execute if score green teamSize matches 1.. run scoreboard add notempty teamSize 1
execute if score yellow teamSize matches 1.. run scoreboard add notempty teamSize 1

scoreboard players reset blue teamSize
execute as @a[team=blue] run scoreboard players add blue teamSize 1
scoreboard players reset red teamSize
execute as @a[team=red] run scoreboard players add red teamSize 1
scoreboard players reset green teamSize
execute as @a[team=green] run scoreboard players add green teamSize 1
scoreboard players reset yellow teamSize
execute as @a[team=yellow] run scoreboard players add yellow teamSize 1

scoreboard players set @a currentDeaths 0
execute at @a run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a run scoreboard players operation @p currentDeaths -= @p initDeaths

execute if score data phase matches 0 run function cf:phase/phase0
execute if score data phase matches 1 run function cf:phase/phase1
execute if score data phase matches 2 run function cf:phase/phase2
execute if score data phase matches 3 run function cf:phase/phase3
execute if score data phase matches 4 run function cf:phase/phase4