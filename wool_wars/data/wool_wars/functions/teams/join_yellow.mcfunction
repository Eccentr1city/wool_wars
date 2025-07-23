# Join Yellow team

# Leave any existing team
team leave @s

# Join yellow team
team join ww_yellow @s

# Give player yellow wool
give @s minecraft:yellow_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Yellow","color":"yellow","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
