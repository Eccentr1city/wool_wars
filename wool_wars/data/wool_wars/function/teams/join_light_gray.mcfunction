# Join Light Gray team

# Leave any existing team
team leave @s

# Join light_gray team
team join ww_light_gray @s

# Give player light_gray wool
give @s minecraft:light_gray_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Light Gray","color":"gray","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
