$execute unless block $(x) $(y) $(z) minecraft:chest[facing=$(rot)] run minecraft:return fail

# move value into locations_saved
$data modify storage treasurehunt:locations locations_saved append value { x: $(x), y: $(y), z: $(z), rot: $(rot) }

# Set back to air so the location cannot be saved twice
$setblock $(x) $(y) $(z) minecraft:air replace
