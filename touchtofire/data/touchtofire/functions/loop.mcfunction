# Defaulttags
tag @e[tag=!onfire] add onfire


execute as @a[tag=onfire] at @s unless entity @e[tag=fireplacer,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["fireplacer"]}

execute as @e[tag=fireplacer] at @s unless score @s touchtofire matches -100.. run scoreboard players set @s touchtofire 20
execute as @e[tag=fireplacer,scores={touchtofire=0..}] run scoreboard players remove @s touchtofire 1
execute as @e[tag=fireplacer,scores={touchtofire=..-1}] run kill @s

execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~ ~-0.4 #touchtofire:nonsolid if block ~ ~ ~ #touchtofire:air run setblock ~ ~ ~ fire[north=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~ ~0.4 #touchtofire:nonsolid if block ~ ~ ~ #touchtofire:air run setblock ~ ~ ~ fire[south=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~-0.4 ~ ~ #touchtofire:nonsolid if block ~ ~ ~ #touchtofire:air run setblock ~ ~ ~ fire[west=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~0.4 ~ ~ #touchtofire:nonsolid if block ~ ~ ~ #touchtofire:air run setblock ~ ~ ~ fire[east=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~1 ~-0.4 #touchtofire:nonsolid if block ~ ~1 ~ #touchtofire:air run setblock ~ ~1 ~ fire[north=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~1 ~0.4 #touchtofire:nonsolid if block ~ ~1 ~ #touchtofire:air run setblock ~ ~1 ~ fire[south=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~-0.4 ~1 ~ #touchtofire:nonsolid if block ~ ~1 ~ #touchtofire:air run setblock ~ ~1 ~ fire[west=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~0.4 ~1 ~ #touchtofire:nonsolid if block ~ ~1 ~ #touchtofire:air run setblock ~ ~1 ~ fire[east=true] destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~-0.1 ~ #touchtofire:nonsolid if block ~ ~ ~ #touchtofire:air run setblock ~ ~ ~ fire destroy
execute as @e[tag=fireplacer,scores={touchtofire=0}] at @s unless block ~ ~2 ~ #touchtofire:nonsolid if block ~ ~1 ~ #touchtofire:air run setblock ~ ~1 ~ fire[up=true] destroy
