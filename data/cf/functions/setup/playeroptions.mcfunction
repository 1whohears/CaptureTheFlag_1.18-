#display options for normal players

#set center


#new world mode
execute if score data newWorldMode matches 1 run function cf:setup/newworldmode

#teams
execute if score data teamnum matches 2 run function cf:teams/selectteams1
execute if score data teamnum matches 4 run function cf:teams/selectteams2

#kits
execute if score data enablekits matches 1 run function cf:kits/selectkits

#check team sizes
tellraw @s {"text":"START GAME","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function cf:setup/teamsizecheck"}}