# Join Magenta team

# Leave any existing team
team leave @s

# Join magenta team
team join ww_magenta @s

# Give player magenta wool
give @s minecraft:magenta_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Magenta","color":"light_purple","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
