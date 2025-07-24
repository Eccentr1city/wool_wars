#!/bin/bash

# Wool Wars Package Update Script
echo "Updating Wool Wars package..."

# Copy the datapack README to the project root
echo "Copying README from datapack to project root..."
cp wool_wars/README.md README.md
echo "README.md updated"

# Create a fresh zip file, overwriting the old one
echo "Creating updated wool_wars.zip..."
rm -f wool_wars.zip
zip -r wool_wars.zip wool_wars
echo "wool_wars.zip recreated with latest changes" 

echo "Package update complete!"