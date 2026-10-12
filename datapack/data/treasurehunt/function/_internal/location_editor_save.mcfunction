$execute unless block $(x) $(y) $(z) minecraft:chest[facing=$(rot)] run minecraft:return fail

$data modify storage treasurehunt:locations locations_saved append value { x: $(x), y: $(y), z: $(z), rot: $(rot) }
