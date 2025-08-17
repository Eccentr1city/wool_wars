# Set team for marker at specific position
# Called with macro parameters: x, y, z and team

# Set the team for the marker at this exact location
$execute positioned $(x) $(y) $(z) run team join $(team) @e[tag=ww_location_marker,distance=..1,limit=1]
