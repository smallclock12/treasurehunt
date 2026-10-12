$function treasurehunt:debug { msg: "Clear Location called $(x) $(y) $(z)" }
$setblock $(x) $(y) $(z) minecraft:air
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
