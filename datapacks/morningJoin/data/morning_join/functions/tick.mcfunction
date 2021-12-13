scoreboard players set @a[tag=!joinedBefore] mj_left 1

execute as @a[scores={mj_left=1}] store result score mj_playerCount playerCount if entity @e[type=minecraft:player]
execute as @a[scores={mj_left=1}] store result score mj_timeOfDay mj_timeOfDay run time query daytime

execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 12000..13000 run time add 12000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 13001..14000 run time add 11000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 14001..15000 run time add 10000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 15001..16000 run time add 9000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 16001..17000 run time add 8000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 17001..18000 run time add 7000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 18001..19000 run time add 6000
execute as @a[scores={mj_left=1}] if score mj_playerCount playerCount matches 1 if score mj_timeOfDay mj_timeOfDay matches 19001..20000 run time add 5000

tag @a[tag=!joinedBefore] add joinedBefore

scoreboard players reset @a mj_left
