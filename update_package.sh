#!/bin/bash

# Wool Wars Package Update Script
echo "Updating Wool Wars package..."

# Parse arguments
SHOULD_COPY=false
WORLD_NAME="Wool test"
MINECRAFT_SAVES="/Users/adamkaufman/Library/Application Support/minecraft/saves"

while [[ $# -gt 0 ]]; do
    case $1 in
        test|-t)
            SHOULD_COPY=true
            shift
            ;;
        --world|-w)
            WORLD_NAME="$2"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1"
            echo "Usage: $0 [test|-t] [--world|-w <world_name>]"
            echo "Note: --world requires test flag to be specified"
            exit 1
            ;;
    esac
done

# Copy the datapack README to the project root
echo "Copying README from datapack to project root..."
cp wool_wars/README.md README.md
echo "README.md updated"

# Create a fresh zip file, overwriting the old one
echo "Creating updated wool_wars.zip..."
rm -f wool_wars.zip
zip -r wool_wars.zip wool_wars
echo "wool_wars.zip recreated with latest changes" 

# Copy to test world if requested
if [ "$SHOULD_COPY" = true ]; then
    WORLD_PATH="$MINECRAFT_SAVES/$WORLD_NAME"
    DATAPACKS_PATH="$WORLD_PATH/datapacks"
    
    if [ ! -d "$WORLD_PATH" ]; then
        echo "❌ World '$WORLD_NAME' not found at: $WORLD_PATH"
        echo "Available worlds:"
        ls -1 "$MINECRAFT_SAVES" 2>/dev/null | head -10
        exit 1
    fi
    
    if [ ! -d "$DATAPACKS_PATH" ]; then
        echo "❌ Datapacks folder not found in world '$WORLD_NAME'"
        echo "Expected: $DATAPACKS_PATH"
        exit 1
    fi
    
    echo "Copying to '$WORLD_NAME' world for testing..."
    cp -r wool_wars "$DATAPACKS_PATH/"
    echo "✅ Datapack copied to '$WORLD_NAME' world - use /reload in game"
fi

echo "✅ Package update complete!"