$function treasurehunt:debug { msg: "Running _internal/add_location $(x) $(y) $(z) $(rot)" }

$data modify storage treasurehunt:locations locations_editor append value {x: $(x), y: $(y), z: $(z), rot: $(rot)}
$setblock $(x) $(y) $(z) air replace
$function treasurehunt:_internal/show_location {x: $(x), y: $(y), z: $(z), rot: $(rot)}
