#load

scoreboard objectives add phase dummy "Game Phase:0=Setup/1=Defense/2=Attack/3=SuddenDeath/4=GameOver"
scoreboard objectives add newWorldMode dummy "Assume there were no items or builds setup before the game starts"

scoreboard objectives add totalDeaths deathCount "Total Deaths"
scoreboard objectives add initDeaths dummy "Total Deaths When the Game Started"
scoreboard objectives add currentDeaths dummy "Total-Init"
scoreboard objectives add spectateTimer dummy "Time as spectator before respawn"

scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add villagerKills minecraft.killed:minecraft.villager

scoreboard objectives add ticks dummy
scoreboard objectives add seconds dummy

scoreboard objectives add defenseTime dummy "Seconds Left to Build Your Defenses"
scoreboard objectives add attackTime dummy "Seconds Before Sudden Death"

team add blue "Blue Team"
team modify blue color blue
team modify blue friendlyFire false
team modify blue seeFriendlyInvisibles true  
scoreboard objectives add displayBlue dummy "BLUE TEAM"
scoreboard objectives setdisplay sidebar.team.blue displayBlue

team add red "Red Team"
team modify red color red
team modify red friendlyFire false
team modify red seeFriendlyInvisibles true
scoreboard objectives add displayRed dummy "RED TEAM"
scoreboard objectives setdisplay sidebar.team.red displayRed

team add green "Green Team"
team modify green color red
team modify green friendlyFire false
team modify green seeFriendlyInvisibles true
scoreboard objectives add displayGreen dummy "GREEN TEAM"
scoreboard objectives setdisplay sidebar.team.green displayGreen

team add yellow "Yellow Team"
team modify yellow color red
team modify yellow friendlyFire false
team modify yellow seeFriendlyInvisibles true
scoreboard objectives add displayYellow dummy "YELLOW TEAM"
scoreboard objectives setdisplay sidebar.team.yellow displayYellow

scoreboard objectives add flagState dummy "Flag State:0=Not Used/1=Safe/2=Stolen/3=Captured"
scoreboard objectives add fx dummy
scoreboard objectives add fy dummy
scoreboard objectives add fz dummy

team add orange
team modify orange color gold
team add purple
team modify purple color dark_purple
team add red2
team modify red2 color dark_red

team join green Flag_Safe
team join yellow Flag_Not_Set
team join red Flag_Stolen
team join orange Members
team join red2 Enemies
team join blue Defense_Time
team join purple Battle_Time
team join yellow Deathmatch
team join blue Victory
team join red You_Suck