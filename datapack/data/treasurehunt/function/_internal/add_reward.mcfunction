$function treasurehunt:debug { msg: "Running _internal/add_reward $(x) $(y) $(z)" }
$data modify storage treasurehunt:rewards defaults append value {x: $(x), y: $(y), z: $(z)}
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
