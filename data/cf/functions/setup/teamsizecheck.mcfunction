#team size check

#TODO check if center armor stand exists

execute if score notempty teamSize matches 2.. run function cf:phase/init1
execute unless score notempty teamSize matches 2.. run say Not Enough Players!