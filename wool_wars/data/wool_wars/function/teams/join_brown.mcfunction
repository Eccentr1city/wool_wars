# Join Brown team

# Leave any existing team
team leave @s

# Join brown team
team join ww_brown @s

# Give player brown wool
give @s minecraft:brown_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Brown","color":"gold","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
