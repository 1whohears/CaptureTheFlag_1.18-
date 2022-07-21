#tick

function cf:timer/seconds

function cf:teams/teamsize

function cf:game/display

execute as @a store result score center x run data get entity @s Pos[0]
execute as @a store result score center y run data get entity @s Pos[1]
execute as @a store result score center z run data get entity @s Pos[2]

scoreboard players set @a currentDeaths 0
execute at @a run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a run scoreboard players operation @p currentDeaths -= @p initDeaths

execute if score data phase matches 0 run function cf:phase/phase0
execute if score data phase matches 1 run function cf:phase/phase1
execute if score data phase matches 2 run function cf:phase/phase2
execute if score data phase matches 3 run function cf:phase/phase3
execute if score data phase matches 4 run function cf:phase/phase4