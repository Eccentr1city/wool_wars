# Wool Wars Datapack

A competitive multiplayer Minecraft datapack where teams compete to control a specific block location by placing their colored wool.

## Features

- **Real-time Wool Detection**: Instantly detects when wool is placed or destroyed at the target location
- **Customizable Timer System**: Set any timer interval (default 10 minutes) with countdown warnings
- **16 Team Support**: All wool colors are supported as different teams with team management
- **Score Tracking**: Persistent score tracking for each team
- **Customizable Location**: Change the wool check location with commands
- **Team System**: Join teams and get automatic wool replenishment
- **Visual & Audio Feedback**: Color-coded messages and sound effects

## Installation

### For Minecraft Realms:
1. Download the `wool_wars` folder
2. Compress it into a ZIP file
3. Upload to your realm through the realm settings
4. Activate the datapack in your world settings

### For Single Player/Servers:
1. Navigate to your world's `datapacks` folder:
   - Single Player: `.minecraft/saves/[world_name]/datapacks/`
   - Server: `[server_folder]/[world_name]/datapacks/`
2. Copy the `wool_wars` folder into the datapacks directory
3. Run `/reload` in-game or restart the world

## Commands

### Core Commands:
- `/function wool_wars:scoring/show_scores` - Display current team scores
- `/function wool_wars:scoring/reset_scores` - Reset all scores and restart timer

### Timer Commands:
- `/function wool_wars:util/set_timer {minutes:X}` - Set timer interval (e.g., {minutes:5} for 5 minutes)

### Location Commands:
- `/function wool_wars:util/set_location` - Show location command help
- `/function wool_wars:util/set_location_x {value:X}` - Set X coordinate
- `/function wool_wars:util/set_location_y {value:Y}` - Set Y coordinate  
- `/function wool_wars:util/set_location_z {value:Z}` - Set Z coordinate
- `/function wool_wars:util/show_location` - Show current check location

### Team Commands:
- `/function wool_wars:teams/join_team` - Show all team join commands
- `/function wool_wars:teams/join_[color]` - Join a specific color team (e.g., join_red)
- `/function wool_wars:teams/leave` - Leave your current team

### Examples:
```
/function wool_wars:util/set_timer {minutes:5}
/function wool_wars:util/set_location_y {value:100}
/function wool_wars:teams/join_blue
```

## Game Rules

1. Teams place their colored wool at the designated location (default: 0, 80, 0)
2. At the timer interval (default 10 minutes), the team whose wool is at the location scores 1 point
3. Teams can destroy or replace opponent's wool at any time
4. Players automatically receive wool when they run out (must be on a team)
5. Timer warnings appear at 5 minutes, 2 minutes, 1 minute, 30 seconds, and final 10 seconds

## Timer Announcements

- **5 minutes**: "⏰ 5 minutes until scoring!"
- **2 minutes**: "⏰ 2 minutes until scoring!"
- **1 minute**: "⏰ 1 minute until scoring!"
- **30 seconds**: "⏰ 30 seconds until scoring!"
- **10-1 seconds**: Countdown with increasing pitch

## Technical Details

- **Pack Format**: 48 (Minecraft 1.21+)
- **Namespace**: `wool_wars`
- **Update Rate**: Runs every tick for instant detection
- **Compatibility**: Realm-compatible, multiplayer-ready

## Team Colors

All 16 Minecraft wool colors are supported:
- White, Orange, Magenta, Light Blue
- Yellow, Lime, Pink, Gray
- Light Gray, Cyan, Purple, Blue
- Brown, Green, Red, Black

## Troubleshooting

- **Datapack not loading**: Run `/datapack list` to verify it's detected
- **No messages appearing**: Ensure you have operator permissions
- **Location not updating**: Use the show_location command to verify coordinates

## Version

Version 1.0 - Compatible with Minecraft 1.21+ 