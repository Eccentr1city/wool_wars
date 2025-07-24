# Join Pink team

# Leave any existing team
team leave @s

# Join pink team
team join ww_pink @s

# Give player pink wool
give @s minecraft:pink_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Pink","color":"light_purple","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
