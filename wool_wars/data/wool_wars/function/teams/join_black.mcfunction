# Join Black team

# Leave any existing team
team leave @s

# Join black team
team join ww_black @s

# Give player black wool
give @s minecraft:black_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Black","color":"black","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
