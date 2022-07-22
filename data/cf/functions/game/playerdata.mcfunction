#player data to always track

execute as @a[nbt={Dimension:"minecraft:overworld"}] store result score @s x run data get entity @s Pos[0]
execute as @a[nbt={Dimension:"minecraft:overworld"}] store result score @s y run data get entity @s Pos[1]
execute as @a[nbt={Dimension:"minecraft:overworld"}] store result score @s z run data get entity @s Pos[2]

scoreboard players set @a currentDeaths 0
execute at @a run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a run scoreboard players operation @p currentDeaths -= @p initDeaths