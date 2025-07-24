# Leave current team

# Leave team
team leave @s

# Announce
tellraw @s ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"You left your team","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 0.5
