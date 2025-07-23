# Join white team

# Leave any existing team
team leave @s

# Join white team
team join ww_white @s

# Give player white wool
give @s minecraft:white_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"White","color":"white","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 