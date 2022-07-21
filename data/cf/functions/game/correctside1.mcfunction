#stay on the right side of the map for red and blue

execute as @a[team=blue,dx=..0] at @s run tp ~1 ~ ~
execute as @a[team=red,dx=0..] at @s run tp ~-1 ~ ~