# Timer tick function - decrements timer and handles announcements

# Only process timer if not paused
execute if score #paused ww_paused matches 0 run scoreboard players remove #timer ww_timer 1

# Check for time announcements (only when not paused)
# 5 minutes remaining (6000 ticks)
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 6000 run function wool_wars:timer/announce_5min

# 2 minutes remaining (2400 ticks)  
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 2400 run function wool_wars:timer/announce_2min

# 1 minute remaining (1200 ticks)
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 1200 run function wool_wars:timer/announce_1min

# 30 seconds remaining (600 ticks)
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 600 run function wool_wars:timer/announce_30sec

# Final 10 second countdown (200 ticks)
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 200 run scoreboard players set #countdown ww_timer 10

# Handle countdown
execute if score #paused ww_paused matches 0 if score #countdown ww_timer matches 1.. run function wool_wars:timer/countdown

# Check if timer reached zero
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 0 run function wool_wars:timer/score_round 