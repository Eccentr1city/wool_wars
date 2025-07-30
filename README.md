# Wool Wars Datapack

A datapack to support a competitive Minecraft game where teams compete to control the color of wool at a specific block location.

## Game Rules

1. Teams compete to place their colored wool on top of a specific bedrock block
2. At the timer interval (default every 10 minutes), the team whose wool is at that location scores 1 point

### Quick Start Example:
```
# 1. Initialize and place control point
/function wool_wars:init
# Jump and place the bedrock block underneath you to begin the game

# 2. Players join teams
/function wool_wars:teams/join_red

# Alternatively, admin assigns players (if players can't run their own commands)
/function wool_wars:admin/set_player_team {player:"Steve", team:"blue"}

# 3. Optional configuration: Shorter rounds
/function wool_wars:util/set_timer {minutes:5}
```

## Commands

### 1. Initial Setup:
- `/function wool_wars:init` - Initialize the datapack and receive a Wool Wars Control Point bedrock block
  - Jump and place the bedrock block underneath you to automatically set the control point (wool will be checked one block above)
  - Run the command again to receive a new control point block if needed

### 2. Team Setup (Players):
- `/function wool_wars:teams/join_team` - Show all available teams to join
- `/function wool_wars:teams/join_[color]` - Join a specific team (e.g., `join_red`, `join_blue`)
  - Available colors: white, orange, magenta, light_blue, yellow, lime, pink, gray, light_gray, cyan, purple, blue, brown, green, red, black
- `/function wool_wars:teams/leave` - Leave your current team

### 3. Game Setup (Admin):
- `/function wool_wars:util/set_location {x:X, y:Y, z:Z}` - Manually set the control point location (alternative method)
- `/function wool_wars:util/set_timer {minutes:M}` - Change round length (default: 10 minutes)

### 4. Team Management (Admin):
- `/function wool_wars:admin/set_player_team {player:"Name", team:"color"}` - Assign player to team
- `/function wool_wars:admin/list_teams` - View all players and their team assignments

### 5. During Gameplay:
- `/function wool_wars:scoring/show_scores` - Display current team scores
- `/function wool_wars:scoring/reset_scores` - Reset all scores and restart timer

### 6. Timer Control:
- `/function wool_wars:timer/pause` - Pause the timer
- `/function wool_wars:timer/unpause` - Resume the timer  
- `/function wool_wars:timer/reset` - Reset the timer without affecting scores

## Installation

### For Minecraft Realms:
1. Download the `wool_wars` ZIP file and unzip it
2. When you create a new world for your realm, open the datapacks setting and add the wool_wars folder to the world's datapacks folder
3. Make sure to enable the datapack before continuing with world creation
4. If startup messages don't appear after world creation, run `/reload`

### For Single Player/Servers:
1. Navigate to your world's `datapacks` folder:
   - Single Player: `.minecraft/saves/[world_name]/datapacks/`
   - Server: `[server_folder]/[world_name]/datapacks/`
2. Copy the `wool_wars` folder into the datapacks directory
3. Run `/reload` in-game or restart the world

## Version

Version 1.2 - Compatible with Minecraft 1.21+ 