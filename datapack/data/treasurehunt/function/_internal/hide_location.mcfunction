$function treasurehunt:debug { msg: "Hide Loc called $(x) $(y) $(z)" }
$setblock $(x) $(y) $(z) minecraft:air
kill @e[tag=treasurehuntlocmarker]
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
