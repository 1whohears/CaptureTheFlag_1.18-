#stay on the right side of the map for red blue green and yellow

execute as @a[team=blue,dx=..0] at @s run tp ~1 ~ ~
execute as @a[team=blue,dz=..0] at @s run tp ~ ~ ~1

execute as @a[team=red,dx=0..] at @s run tp ~-1 ~ ~
execute as @a[team=red,dz=0..] at @s run tp ~ ~ ~-1

execute as @a[team=green,dx=0..] at @s run tp ~-1 ~ ~
execute as @a[team=green,dz=..0] at @s run tp ~ ~ ~1

execute as @a[team=yellow,dx=..0] at @s run tp ~1 ~ ~
execute as @a[team=yellow,dz=0..] at @s run tp ~ ~ ~-1