# Wool Wars Datapack

A competitive multiplayer Minecraft datapack where teams compete to control a specific block location by placing their colored wool.

## Game Rules

1. Teams place their colored wool at the designated location (default: 0, 80, 0)
2. At the timer interval (default 10 minutes), the team whose wool is at the location scores 1 point
3. Teams can destroy or replace opponent's wool at any time

## Features

- **Easy Setup**: Place a special bedrock block to instantly set the control point location
- **Real-time Wool Detection**: Instantly detects and announces when wool is placed or destroyed at the target location
- **16 Team System**: All wool colors are supported as different teams with team management. Join or get added to teams to receive automatic wool replenishment
- **Score Tracking**: Persistent score tracking for each team, calculated automatically every timer interval
- **Customizable Timer System**: Set any timer interval (default 10 minutes) with countdown warnings
- **Customizable Location**: Change the wool check location via bedrock placement or manual commands

## Installation

### For Minecraft Realms:
1. Download the `wool_wars` ZIP file
2. Upload to your realm through the realm settings
3. Activate the datapack in your world settings

### For Single Player/Servers:
1. Navigate to your world's `datapacks` folder:
   - Single Player: `.minecraft/saves/[world_name]/datapacks/`
   - Server: `[server_folder]/[world_name]/datapacks/`
2. Copy the `wool_wars` folder into the datapacks directory
3. Run `/reload` in-game or restart the world

## Commands

### 1. Initial Setup:
- `/function wool_wars:init` - Initialize the datapack and receive a Wool Wars Control Point bedrock block
  - Place the bedrock block to automatically set the control point (wool will be checked one block above)
  - Run the command again to receive a new control point block if needed

### 2. Team Setup (Players):
- `/function wool_wars:teams/join_team` - Show all available teams to join
- `/function wool_wars:teams/join_[color]` - Join a specific team (e.g., `join_red`, `join_blue`)
  - Available colors: white, orange, magenta, light_blue, yellow, lime, pink, gray, light_gray, cyan, purple, blue, brown, green, red, black
- `/function wool_wars:teams/leave` - Leave your current team

### 3. Game Setup (Admin):
- `/function wool_wars:util/set_location {x:X, y:Y, z:Z}` - Manually set the control point location (alternative method)
- `/function wool_wars:util/show_location` - Display current control point coordinates
- `/function wool_wars:util/set_timer {minutes:M}` - Change round length (default: 10 minutes)

### 4. Team Management (Admin):
- `/function wool_wars:admin/set_player_team {player:"Name", team:"color"}` - Assign player to team
- `/function wool_wars:admin/list_teams` - View all players and their team assignments

### 5. During Gameplay:
- `/function wool_wars:scoring/show_scores` - Display current team scores
- `/function wool_wars:scoring/reset_scores` - Reset all scores and restart timer

### Quick Start Example:
```
# 1. Initialize and place control point
/function wool_wars:init
# Place the bedrock block where you want the game

# 2. Players join teams
/function wool_wars:teams/join_red

# 3. Optional: Shorter rounds for testing
/function wool_wars:util/set_timer {minutes:5}

# 4. Admin assigns players without commands (if needed)
/function wool_wars:admin/set_player_team {player:"Steve", team:"blue"}
```

## Version

Version 1.1 - Compatible with Minecraft 1.21+ 