# Wool Wars Datapack

A datapack to support a competitive Minecraft game where teams compete to control the color of wool at a specific block location.

## Game Rules

### Single-Location Mode (Default):
1. Teams compete to place their colored wool on top of a specific bedrock block
2. At the timer interval (default every 10 minutes), the team whose wool is at that location scores 1 point

### Multi-Location Mode:
1. Teams compete to place their colored wool on top of multiple bedrock blocks (2-5 locations)
2. Every 10/n minutes (where n = number of locations), one location is scored in rotation
3. The timer shows which location will be scored next

### Quick Start Example (Single-Location):
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

### Quick Start Example (Multi-Location):
```
# 1. Set up multi-location mode with 3 locations
/function wool_wars:multi/setup {count:3}

# 2. Place the 3 bedrock blocks you received at different locations

# 3. Players join teams (same as single-location mode)
/function wool_wars:teams/join_red

# 4. Optional: Adjust interval between location scoring
/function wool_wars:util/set_timer {minutes:2}
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

### 7. Multi-Location Mode (Admin):
- `/function wool_wars:multi/setup {count:N}` - Enable multi-location mode with N locations (2-5)
  - Gives you N bedrock blocks to place at different locations
  - Timer automatically adjusts to 10/N minute intervals
- `/function wool_wars:multi/show_locations` - Display all active locations and their coordinates
- `/function wool_wars:multi/disable` - Return to single-location mode
- `/function wool_wars:util/set_timer {minutes:M}` - In multi-location mode, sets interval between individual location scoring

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

Version 1.3 - Compatible with Minecraft 1.21+ 
- Added multi-location scoring mode
- Teams can now compete across 2-5 different locations
- Rotating scoring system with adjustable intervals
- Persistent glowing location markers 