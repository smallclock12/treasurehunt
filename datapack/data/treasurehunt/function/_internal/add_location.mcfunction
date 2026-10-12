$function treasurehunt:debug { msg: "Running _internal/add_location $(x) $(y) $(z)" }

$execute unless block $(x) $(y) $(z) minecraft:chest run minecraft:return run tellraw @s {color: red, text: "Chest not found!"}

$data modify storage treasurehunt:locations locations append value {x: $(x), y: $(y), z: $(z)}
$setblock $(x) $(y) $(z) air replace
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10

