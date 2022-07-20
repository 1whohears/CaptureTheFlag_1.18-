#init phase 1

scoreboard players set data phase 1

#Initial setup for any title commands
title @a times 5 30 5

#make center marker invisible
data modify entity @e[tag=center,limit=1] CustomNameVisible set value 0b

#give all current players a player tag
tag @a[team=blue] add player
tag @a[team=red] add player
tag @a[team=green] add player
tag @a[team=yellow] add player

#put players back in survival
gamemode survival @a[tag=player]

#other scoreboard setup
execute at @a[tag=player] run scoreboard players operation @p initDeaths = @p totalDeaths
scoreboard players set @a[tag=player] currentDeaths 0
scoreboard players set @a[tag=player] spectateTimer 0
execute at @a[tag=player] run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a[tag=player] run scoreboard players operation @p currentDeaths -= @p initDeaths
scoreboard players set @a[tag=player] villagerKills 0
scoreboard players set @a[tag=player] leave 0

#set world border
worldborder set 1000 0
execute at @e[tag=center] run worldborder center ~ ~
worldborder damage amount 1
worldborder damage buffer 2
worldborder warning distance 1

#new world mode stuff
execute if score data newWorldMode matches 1 run gamerule doDaylightCycle true
execute if score data newWorldMode matches 1 run time set 0
execute if score data newWorldMode matches 1 run clear @a[tag=player]
gamerule keepinventory true

#tp players

#set new spawn points

#give random team member captain

#tell captain how to place and retrieve the flag with trigger commands

#give everyone some health and hunger regen
effect give @a[tag=player] regeneration 10 5 true
effect give @a[tag=player] saturation 10 5 true

#distribute kits