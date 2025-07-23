# Join Gray team

# Leave any existing team
team leave @s

# Join gray team
team join ww_gray @s

# Give player gray wool
give @s minecraft:gray_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Gray","color":"dark_gray","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
